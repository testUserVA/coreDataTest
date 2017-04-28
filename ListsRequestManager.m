//
//  ListsRequestManager.m
//  Ledoc
//
//  Created by Michał Ćwiek on 28/11/16.
//  Copyright © 2016 daro. All rights reserved.
//

#import "ListsRequestManager.h"
#import "DataRequest.h"
#import "DatabaseUtils.h"
#import "DeviationDetailsRest.h"
#import "JSONLoader.h"
#import "Utils.h"

@implementation ListsRequestManager

+ (ListsRequestManager*)sharedInstance
{
    static ListsRequestManager *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    
    return sharedMyManager;
}

- (instancetype)init {
    self = [super init];
    [self setAllFirstTimeDownloadFlagsAsFalse];
    return self;
}

- (void)dealloc {
    NSLog(@"Dealloc %@", NSStringFromClass ([self class]));
}

- (void)setAllFirstTimeDownloadFlagsAsFalse {
    self.isUserDetailsLoadedFirstTime = NO;
    self.isUserAssesmentLoadedFirstTime = NO;
    self.isUserDocumentsLoadedFirstTime = NO;
    
    self.isEquipmentsLoadedFirstTime = NO;
    self.isImprovementsLoadedFirstTime = NO;
    self.isAllDocumentsLoadedFirstTime = NO;
}

- (void)runAllDataRequestsAfterLoginSuccessResponse {
    [self setAllFirstTimeDownloadFlagsAsFalse];
    
    // NOT USE UNTIL SOLVE MAIN THREAD INSTEAD ASYNC PARSE-MAP-WRITE Equipments
    [self getAllEquipmentsFromAPI];
    
    [self getAllImprovementsFromAPI];
    [self getCompanyAndThenStandardDocumentsFromAPI];
}



- (void)getAllEquipmentsFromAPI {
    [DataRequest equipmentList:^(NSString *response) {
        [Utils runOnMainThread:^{
            NSMutableArray<EquipmentEntry *>* equiments = [JSONLoader parseEquipmentListWithNotify:response];
            [DatabaseUtils sync];
            NSLog(@"getAllEquipmentsFromAPI");
        }];
        
    } onFailed:^(NSError *error) {
        NSLog(@"Error %@", error);
        
    } always:^{
        self.isEquipmentsLoadedFirstTime = YES;
        [self postNeedToReloadEquipmentListNotification];
    }];
}

- (void)getAllImprovementsFromAPI {
    [DataRequest improvementsList:^(NSString *response) {
        [Utils runOnMainThread:^{
            NSMutableArray<DeviationDetailsRest*>* deviations = [JSONLoader parseDeviationListWithNotify:response];
            [DatabaseUtils sync];
        }];
        
        NSLog(@"getAllImprovementsFromAPI");
    } onFailed:^(NSError *error) {
        NSLog(@"Error %@", error);
        
    } always:^{
        self.isImprovementsLoadedFirstTime = YES;
         [self postNeedToReloadImprovementListNotification];
        
    }];
}

- (void)geAllKindsOfDocumentsFromAPI {
    [self getCompanyAndThenStandardDocumentsFromAPI];
}

- (void)getCompanyAndThenStandardDocumentsFromAPI {
    [DataRequest regularDocumentsList:^(NSString *response) {
        [Utils runOnMainThread:^{
            NSMutableArray<DocumentDetailsEntry*>* companyDocuments = [JSONLoader parseDocumentList:response withNotify:NO];
            [DatabaseUtils sync];
            NSLog(@"getAllCompanyDocumentsFromAPI");
            
        }];
        
    } onFailed:^(NSError *error) {
        NSLog(@"Error %@", error);
        
    } always:^{
        [self getAllStandardDocumentsFromAPI];
        
    }];
}

- (void)getAllStandardDocumentsFromAPI {
    [DataRequest standardDcumentsList:^(NSString *response) {
        [Utils runOnMainThread:^{
            NSMutableArray<DocumentDetailsEntry*>* standardDocuments = [JSONLoader parseDocumentList:response withNotify:YES];
            [DatabaseUtils sync];
            NSLog(@"getAllCompanyDocumentsFromAPI");
            
        }];
        
    } onFailed:^(NSError *error) {
        NSLog(@"Error %@", error);
        
    } always:^{
        self.isAllDocumentsLoadedFirstTime = YES;
        [self postNeedToReloadDocumentsListNotification];
        
    }];
}

-(void)postNeedToReloadEmployeeDetailsNotification {
    [self postNotificationWithName:NEED_TO_RELOAD_EMPLOYEE_DETAILS_NOTIFICATION_KEY];
}

-(void)postNeedToReloadEmployeeAssessmentNotification {
    [self postNotificationWithName:NEED_TO_RELOAD_EMPLOYEE_ASSESSMENT_NOTIFICATION_KEY];
}

-(void)postNeedToReloadEmployeeDocumentsNotification {
    [self postNotificationWithName:NEED_TO_RELOAD_EMPLOYEE_DOCUMENTS_NOTIFICATION_KEY];
}

-(void)postNeedToReloadEquipmentListNotification {
    [self postNotificationWithName:NEED_TO_RELOAD_EQUIPMENT_LIST_NOTIFICATION_KEY];
}

-(void)postNeedToReloadImprovementListNotification {
    [self postNotificationWithName:NEED_TO_RELOAD_IMPROVEMENTS_LIST_NOTIFICATION_KEY];
}

-(void)postNeedToReloadDocumentsListNotification {
    [self postNotificationWithName:NEED_TO_RELOAD_DOCUMENTS_LIST_NOTIFICATION_KEY];
}

- (void)postNotificationWithName:(NSString *)notificationName {
    NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];
    [notificationCenter postNotificationName:notificationName object:nil];
}

@end