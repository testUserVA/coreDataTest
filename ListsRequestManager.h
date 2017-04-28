//
//  ListsRequestManager.h
//  Ledoc
//
//  Created by Michał Ćwiek on 28/11/16.
//  Copyright © 2016 daro. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString *const NEED_TO_RELOAD_EMPLOYEE_ASSESSMENT_NOTIFICATION_KEY = @"needToReloadEmployeeAssessmentNotificationKey";
static NSString *const NEED_TO_RELOAD_EMPLOYEE_DOCUMENTS_NOTIFICATION_KEY = @"needToReloadEmployeeDocumentsNotificationKey";
static NSString *const NEED_TO_RELOAD_EMPLOYEE_DETAILS_NOTIFICATION_KEY = @"needToReloadEmployeeDetailsNotificationKey";

static NSString *const NEED_TO_RELOAD_EQUIPMENT_LIST_NOTIFICATION_KEY = @"needToReloadEquipmentListNotificationKey";
static NSString *const NEED_TO_RELOAD_IMPROVEMENTS_LIST_NOTIFICATION_KEY = @"needToReloadImprovementsListNotificationKey";
static NSString *const NEED_TO_RELOAD_DOCUMENTS_LIST_NOTIFICATION_KEY = @"needToReloadDocumentsListNotificationKey";

@interface ListsRequestManager : NSObject

@property BOOL isUserDetailsLoadedFirstTime;
@property BOOL isUserAssesmentLoadedFirstTime;
@property BOOL isUserDocumentsLoadedFirstTime;

@property BOOL isEquipmentsLoadedFirstTime;
@property BOOL isImprovementsLoadedFirstTime;
@property BOOL isAllDocumentsLoadedFirstTime;

+ (ListsRequestManager *)sharedInstance;

- (void)runAllDataRequestsAfterLoginSuccessResponse;
- (void)runAllLoggedEmployeeRelatedRequests;

- (void)getAllEquipmentsFromAPI;

@end