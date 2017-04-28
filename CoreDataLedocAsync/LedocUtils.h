//
//  LedocUtils.h
//  CoreDataLedocAsync
//
//  Created by Michał Ćwiek on 26/04/17.
//  Copyright © 2017 valueadd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LedocUtils : NSObject
+ (LedocUtils *)sharedInstance;
@property (nonatomic, strong) NSString *userId;
@end
