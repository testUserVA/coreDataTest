//
//  DataRequestDelegate.h
//  Ledoc
//
//  Created by daro on 23/01/14.
//  Copyright (c) 2014 daro. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DataRequestDelegate <NSObject>

@required
//(void (^)(NSArray *posts, NSError *error))block
//(void (^)(NSURLRequest *request, NSHTTPURLResponse *response, id JSON))block;

- (void)onSuccess:(NSString *)funcID response:(NSString *)response requestNumber:(NSInteger)requestId;

- (void)onFailed:(NSString *)funcID error:(NSError *)error;

@end
