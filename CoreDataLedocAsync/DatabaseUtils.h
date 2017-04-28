//
//  DatabaseUtils.h
//  Ledoc
//
//  Created by daro on 11/02/14.
//  Copyright (c) 2014 daro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EquipmentEntry.h"
#import "DeviationDetailsRest.h"
#import "DocumentDetailsEntry.h"

#define SYNC_TYPE_DEVIATION 1
#define SYNC_TYPE_DOCUMENT 2
#define SYNC_TYPE_EQUIPMENT 3

#define TYPE_MAIN_PREVIEW_PHOTO @"TYPE__MAIN_PREVIEW_PHOTO"
#define TYPE_MAIN_PHOTO @"TYPE_MAIN_PHOTO"


@interface DatabaseUtils : NSObject

+ (BOOL)sync;

#pragma mark - Generic database methods
+ (nullable id)loadDatabaseObjectModelIfPossible:(nonnull NSString *)entityName
                                 withId:(NSInteger)entityId
                    withIdAttributeName:(nonnull NSString *)idAttributeName;

+ (nullable EquipmentEntry *)loadEquipmenWithIdIfExist:(NSInteger)objectId;
+ (nullable DeviationDetailsRest *)loadImprovementWithIdIfExist:(NSInteger)objectId;
+ (nullable DocumentDetailsEntry *)loadDocumentWithIdIfExist:(NSInteger)objectId;

@end
