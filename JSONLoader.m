//
//  JSONLoader.m
//  Ledoc
//
//  Created by daro on 23/01/14.
//  Copyright (c) 2014 daro. All rights reserved.
//

#import "JSONLoader.h"
#import "JSONKit.h"
#import "GeneratedDeviationList.h"
#import "DatabaseUtils.h"

#define EQUIPMENT_STRING @"equipment"
#define DOCUMENT_STRING @"document"

@implementation JSONLoader


/**
 * Function parse all and full deviation list from response
 */
+ (NSMutableArray *)parseDeviationListWithNotify:(NSString *)response
{
    if(!response)
        return nil;
    
    GeneratedDeviationList *gi = [GeneratedDeviationList createObjectWithNotification:[response objectFromJSONString]];
    if(!gi)
        return nil;
    
    if(!gi.message && gi.data) {
        return gi.data.detailList;
    }
    return nil;
}

/**
 * Function return deviation parsed list
 */
+ (NSMutableArray*)parseDeviationListResponse:(NSString*)response
{
    if(!response)
        return nil;
    
    GeneratedDeviationList *gi = [GeneratedDeviationList createObject:[response objectFromJSONString]];
    if(!gi)
        return nil;
    
    if(!gi.message && gi.data) {
        return gi.data.detailList;
    }
    
    return nil;
}

/**
* Parse deviationDetailInfo
*/
+ (DeviationDetailsRest *)parseDetailDeviation:(NSString *)response
{
    if(!response) return nil;
    
    NSMutableDictionary *detailDictionary = [response objectFromJSONString];
    
    if (![detailDictionary objectForKey:@"data"] || [[detailDictionary objectForKey:@"data"] isEqual:[NSNull null]])
        return nil;
    
    NSMutableDictionary *detailDeviationInfo = [detailDictionary objectForKey:@"data"];
    
    return [DeviationDetailsRest initDetailDeviation:detailDeviationInfo];
}







// when ID in response is null +[parseResponsePostAddNewEquipment] return data as nil, but there still might be error message in returned equipment without Id
// this method is necesery becouse EquipmentEntry is Core Data class and create a new instance with only new error messages causes runtime errors
+ (NSString *)getErrorIfThereWasBlankElementId:(NSString *)response
{
    NSDictionary *deserializedData = [response objectFromJSONString];
    deserializedData = [deserializedData objectForKey:@"data"];
    NSArray *rejected = [deserializedData objectForKey:@"rejected"];
    
    NSString *errorMessage = [rejected.firstObject objectForKey:@"errorMessage"];
    
    if(errorMessage && ![errorMessage isEqual:[NSNull null]] && errorMessage.length > 0) {
        return errorMessage;
    }
    return nil;
}

/**
 * Parse logout yes if success
 */
+ (BOOL)parseLogout:(NSString *)response
{
    //{"status":"Ok","message":null,"data":null,"user_ID":null}
    NSDictionary *deserializedData = [response objectFromJSONString];
    NSString *message = [deserializedData objectForKey:@"message"];
    
    //NSNull
    if([message isEqual:[NSNull null]]) {
        return YES;
    }
    
    return NO;
}

/**
 * Parse response with edit equipment
 */
+ (NSString*)parseEquipmentEditDetail:(NSString *)response
{
    NSDictionary *deserializedData = [response objectFromJSONString];
    NSString *message = [deserializedData objectForKey:@"message"];
    
    if([message isEqual:[NSNull null]]) {
        return nil;
    }
    return message;
}

/**
 * Parse response with equipment detail
 */
+ (EquipmentEntry *)parseEquipmentDetail:(NSString *)response
{
    NSDictionary *deserializedData = [response objectFromJSONString];
    NSString *message = [deserializedData objectForKey:@"message"];
    
    if([message isEqual:[NSNull null]]) {
        deserializedData = [deserializedData objectForKey:@"data"];
        return [EquipmentEntry initEquipment:deserializedData];
    }
    
    return nil;
}

/**
 * Function parse all and full equipment list from response
 */
+ (NSMutableArray *)parseEquipmentList:(NSString *)response
{
    return nil;
    // TODO: Implement
//    NSMutableArray *equipmentArray = [[NSMutableArray alloc] init];
//    
//    NSDictionary *deserializedData = [response objectFromJSONString];
//    NSString *message = [deserializedData objectForKey:@"message"];
//    
//    //NSNull
//    if([message isEqual:[NSNull null]]) {
//        NSDictionary *data = [deserializedData objectForKey:@"data"];
//        if(data && ![data isEqual:[NSNull null]]) {
//            [data enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
//                if([key isEqualToString:@"list"]) {
//                    for(int i = 0; i < [obj count]; i++) {
//                        EquipmentEntry *equ = [EquipmentEntry initEquipment:[obj objectAtIndex:i]];
//                        [equipmentArray addObject:equ];
//
//                    }
//                } else if([key isEqualToString:@"idList"]) {
//                    if([LedocUtils data].idsEquipmentList)
//                        [[LedocUtils data].idsEquipmentList removeAllObjects];
//                    [LedocUtils data].idsEquipmentList = [NSMutableArray new];
//                    
//                    for(int i = 0; i < [obj count]; i++) {
//                        [[LedocUtils data].idsEquipmentList addObject:[obj objectAtIndex:i]];
//                    }
//                }
//            }];
//        }
//    }
//    return equipmentArray;
}

/**
 * Function parse all and full equipment list from response
 */
+ (NSMutableArray *)parseEquipmentListWithNotify:(NSString *)response
{
    // TODO: Implement
    return nil;
//    NSMutableArray *equipmentArray = [[NSMutableArray alloc] init];
//    
//    NSDictionary *deserializedData = [response objectFromJSONString];
//    NSString *message = [deserializedData objectForKey:@"message"];
//    
//    //NSNull
//    if([message isEqual:[NSNull null]]) {
//        deserializedData = [deserializedData objectForKey:@"data"];
//        if(deserializedData && ![deserializedData isEqual:[NSNull null]]) {
//            [deserializedData enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
//                if([key isEqualToString:@"list"]) {
//                    for(int i = 0; i < [obj count]; i++) {
//                        EquipmentEntry *equ = [EquipmentEntry initEquipment:[obj objectAtIndex:i]];
//                        if(equ) {
//                            [equipmentArray addObject:equ];
//                        }
//                        
//                        [Utils runOnMainThread:^{
//                            [[NSNotificationCenter defaultCenter] postNotificationName:NOTIFY_INCREMENT object:nil];
//                        }];
//                    }
//                } else if([key isEqualToString:@"idList"]) {
//                    if([LedocUtils data].idsEquipmentList)
//                        [[LedocUtils data].idsEquipmentList removeAllObjects];
//                    [LedocUtils data].idsEquipmentList = [NSMutableArray new];
//                    
//                    for(int i = 0; i < [obj count]; i++) {
//                        [[LedocUtils data].idsEquipmentList addObject:[obj objectAtIndex:i]];
//                    }
//                }
//            }];
//        }
//    }
//    
//    return equipmentArray;
}


////// Document ///////

+ (NSMutableArray*)parseDocumentList:(NSString*)response withNotify:(BOOL)willNotify
{
    if(!response)
        return nil;
        
    GeneratedDeviationList *gi = nil;
    
    if(willNotify)
        gi = [DocumentListModel createObjectWithNotification:[response objectFromJSONString]];
    else
        gi = [DocumentListModel createObject:[response objectFromJSONString]];
    
    
    if(!gi)
        return nil;
    
    if(!gi.message && gi.data) {
        return gi.data.detailList;
    }
    return nil;
}

+ (DocumentDetailsEntry *)parseDetailDocument:(NSString *)response
{
    if(!response) return nil;
    
    NSMutableDictionary *detailDictionary = [response objectFromJSONString];
    
    if (![detailDictionary objectForKey:@"data"] || [[detailDictionary objectForKey:@"data"] isEqual:[NSNull null]])
        return nil;
    
    NSMutableDictionary *detailDocumentInfo = [detailDictionary objectForKey:@"data"];
    
    return [DocumentDetailsEntry initDetailDocument:detailDocumentInfo];
}


@end