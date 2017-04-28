//
//  Utils.m
//  CoreDataLedocAsync
//
//  Created by Michał Ćwiek on 27/04/17.
//  Copyright © 2017 valueadd. All rights reserved.
//

#import "Utils.h"
#import "AppDelegate.h"

@implementation Utils

+ (void)runOnThread:(void (^)())function
{
    if(![NSThread isMainThread]) {
        function();
    } else {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), function);
    }
}

+ (void)runOnMainThread:(void (^)())function
{
    if ([NSThread isMainThread]) {
        function();
    } else {
        dispatch_sync(dispatch_get_main_queue(), function);
    }
}

+ (NSManagedObjectContext *)getManagedObjCtx
{
    AppDelegate *del = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    return [del managedObjectContext];
}

@end
