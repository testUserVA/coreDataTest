  //
//  DatabaseUtils.m
//  Ledoc
//
//  Created by daro on 11/02/14.
//  Copyright (c) 2014 daro. All rights reserved.
//

#import "DatabaseUtils.h"
#import <CoreData/CoreData.h>
#import "AppDelegate.h"
#import "Utils.h"

@implementation DatabaseUtils

+ (BOOL)sync
{
    AppDelegate *del = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    [del lock];
    
    NSManagedObjectContext *context = [Utils getManagedObjCtx];
    
    // Save the context.
    NSError *error = nil;
    if (![context save:&error]) {
        [del unlock];
        return NO;
    }
    
    [del unlock];
    return YES;
}

#pragma mark - Generic database methods
+ (id)loadDatabaseObjectModelIfPossible:(nonnull NSString *)entityName
                                 withId:(NSInteger)entityId
                    withIdAttributeName:(nonnull NSString *)idAttributeName
{
    
    // TODO: Implement this
    return nil;
    
//    AppDelegate *del = (AppDelegate*)[[UIApplication sharedApplication] delegate];
//    [del lock];
//    
//    NSManagedObjectContext *context = [Utils getManagedObjCtx];
//    
//    NSFetchRequest *request = [[NSFetchRequest alloc] init];
//    NSEntityDescription *entity = [NSEntityDescription entityForName:entityName inManagedObjectContext:context];
//    [request setEntity:entity];
//
//    //http://stackoverflow.com/questions/19673849/pass-the-key-to-predicate-as-parameter-in-predicatewithformat
//    [request setPredicate:[NSPredicate predicateWithFormat:@"%K == %d", idAttributeName, entityId]];
//    
//    NSError *error;
//    NSMutableArray *mutableFetchResults = [[context executeFetchRequest:request error:&error] mutableCopy];
//    if (mutableFetchResults == nil || [mutableFetchResults count] == 0) {
//        if(error)
//            [Log loge:@"ERROR in database: %@", [error description]];
//        
//        [del unlock];
//        return nil;
//    }
//    
//    [del unlock];
//    return [mutableFetchResults objectAtIndex:0];
}

+ (EquipmentEntry *)loadEquipmenWithIdIfExist:(NSInteger)objectId {
    EquipmentEntry *object = [DatabaseUtils loadDatabaseObjectModelIfPossible:@"EquipmentEntry"
                                                                       withId:objectId
                                                          withIdAttributeName:@"equId"];
    return object;
}

+ (DeviationDetailsRest *)loadImprovementWithIdIfExist:(NSInteger)objectId {
    DeviationDetailsRest *object = [DatabaseUtils loadDatabaseObjectModelIfPossible:@"DeviationDetailsRest"
                                                                             withId:objectId
                                                                withIdAttributeName:@"deviationID"];
    return object;
}

+ (DocumentDetailsEntry *)loadDocumentWithIdIfExist:(NSInteger)objectId {
    DocumentDetailsEntry *object = [DatabaseUtils loadDatabaseObjectModelIfPossible:@"DocumentDetailsEntry"
                                                                             withId:objectId
                                                                withIdAttributeName:@"documentId"];
    return object;
}

@end