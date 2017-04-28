//
//  LedocUtils.m
//  CoreDataLedocAsync
//
//  Created by Michał Ćwiek on 26/04/17.
//  Copyright © 2017 valueadd. All rights reserved.
//

#import "LedocUtils.h"

@implementation LedocUtils

+ (LedocUtils*)sharedInstance
{
    static LedocUtils *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    
    return sharedMyManager;
}

- (id)init
{
    self = [super init];
    return self;
}

@end
