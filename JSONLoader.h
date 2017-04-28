//
//  JSONLoader.h
//  Ledoc
//
//  Created by daro on 23/01/14.
//  Copyright (c) 2014 daro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EquipmentEntry.h"

#import "DeviationDetailsRest.h"
#import "DocumentDetailsEntry.h"
#import "ResponseDocumentationList.h"
#import "DocumentListModel.h"
#import "DocumentDetailsEntry.h"
//#import "PhotoModel.h"
//#import "AssessmentQuestionsSection.h"
//#import "AssessmentQuestion.h"

@interface JSONLoader : NSObject

+ (NSMutableArray *)parseDeviationListWithNotify:(NSString *)response;

/**
 * Function return deviation parsed list
 */
+ (NSMutableArray*)parseDeviationListResponse:(NSString*)response;
/**
 * Parse deviationDetailInfo
 */
+ (DeviationDetailsRest *)parseDetailDeviation:(NSString *)response;


// when ID in response is null +[parseResponsePostAddNewEquipment] return data as nil, but there still might be error message in returned equipment without Id
// this method is necesery becouse EquipmentEntry is Core Data class and create a new instance with only new error messages causes runtime errors
+ (NSString *)getErrorIfThereWasBlankElementId:(NSString *)response;

/**
 * Parse logout yes if success
 */
+ (BOOL)parseLogout:(NSString *)response;
/**
 * Parse response with edit equipment
 */
+ (NSString*)parseEquipmentEditDetail:(NSString *)response;
/**
 * Parse response with equipment detail
 */
+ (EquipmentEntry *)parseEquipmentDetail:(NSString *)response;

/**
 * Function parse all and full equipment list from response
 */
+ (NSMutableArray *)parseEquipmentList:(NSString *)response;

/**
 * Function parse all and full equipment list from response
 */
+ (NSMutableArray *)parseEquipmentListWithNotify:(NSString *)response;

////// Document ///////

+ (NSMutableArray*)parseDocumentList:(NSString*)response withNotify:(BOOL)willNotify;

+ (DocumentDetailsEntry *)parseDetailDocument:(NSString *)response;
@end
