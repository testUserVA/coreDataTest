//
//  Utils.h
//  CoreDataLedocAsync
//
//  Created by Michał Ćwiek on 27/04/17.
//  Copyright © 2017 valueadd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface Utils : NSObject

+ (void)runOnThread:(void (^)())function;
+ (void)runOnMainThread:(void (^)())function;
+ (NSManagedObjectContext *)getManagedObjCtx;

@end
