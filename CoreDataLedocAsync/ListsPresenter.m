//
//  ListsPresenter.m
//  CoreDataLedocAsync
//
//  Created by Michał Ćwiek on 24/04/17.
//  Copyright © 2017 valueadd. All rights reserved.
//

#import "ListsPresenter.h"
#import "DataRequest.h"
#import "ListsRequestManager.h"
#import "LedocUtils.h"
#import "JSONKit.h"

@implementation ListsPresenter

- (instancetype)initWithListView:(id<ListView>)listView equipmentList:(NSArray *)equipmentList {
    NSLog(@"Invoking initWithListView");
    
    self = [super init];
    
    if(self) {
        self.view = listView;
        self.equipments = equipmentList;
        [self addListObservers];
        
    }
    
    return self;
}

-(void)dealloc {
     [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)addListObservers {
    [self registerNotificationAboutGetNewEquipments];
    [self registerNotificationAboutGetNewImprovements];
    [self registerNotificationAboutGetNewDocuments];
}

- (void)registerNotificationAboutGetNewEquipments {
    NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];
    [notificationCenter addObserver:self selector:@selector(reloadEquipmentTable) name:NEED_TO_RELOAD_EQUIPMENT_LIST_NOTIFICATION_KEY object:nil];
}

- (void)registerNotificationAboutGetNewImprovements {
    NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];
    [notificationCenter addObserver:self selector:@selector(reloadImprovementsTable) name:NEED_TO_RELOAD_IMPROVEMENTS_LIST_NOTIFICATION_KEY object:nil];
}

- (void)registerNotificationAboutGetNewDocuments {
    NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];
    [notificationCenter addObserver:self
                           selector:@selector(reloadDocumentsTable)
                               name:NEED_TO_RELOAD_DOCUMENTS_LIST_NOTIFICATION_KEY
                             object:nil];
}

- (void)reloadEquipmentTable {
    NSLog(@"relaoding equipment table");
}

- (void)reloadImprovementsTable {
    NSLog(@"relaoding improvements table");
}

- (void)reloadDocumentsTable {
    NSLog(@"relaoding docuemnts table");
    
}

- (void)loginAndDownload:(NSString *)username withPassword:(NSString *)password {
    NSLog(@"Start to login and list downloading");
    NSDictionary *postParams = [NSDictionary dictionaryWithObjectsAndKeys:username, @"username", password, @"password", @"en", @"language", nil];
    NSDictionary *params = [NSDictionary dictionaryWithObjectsAndKeys:postParams, @"data", nil];
    
    [DataRequest login:params onSuccess:^(NSString *response) {
        NSLog(@"%@", response);
        [[LedocUtils sharedInstance] setUserId:[response objectFromJSONString][@"user_ID"]];
        [[ListsRequestManager sharedInstance] runAllDataRequestsAfterLoginSuccessResponse];
    } onFailed:^(NSError *error) {
        NSLog(@"%@", error);
    } always:^{
    }];
}

- (void)reset {
    NSLog(@"Reseting and logout");
}

@end
