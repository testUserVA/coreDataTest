//
//  DataRequest.h
//  Ledoc
//
//  Created by daro on 23/01/14.
//  Copyright (c) 2014 daro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataRequest : NSObject

+ (void)login:(NSDictionary *)params
    onSuccess:(void (^)(NSString *response))successHandler
     onFailed:(void (^)(NSError *error))failedHandler
       always:(void (^)())always;

+ (BOOL)isLogoutIfNeeded:(NSString*)responseStr;

+ (void)getRequest:(NSString *)getURL
         onSuccess:(void (^)(NSString *responseString))successHandler
          onFailed:(void (^)(NSError *error))failedHandler
            always:(void (^)())always;

+ (void)equipmentList:(void (^)(NSString *response))successHandler
             onFailed:(void (^)(NSError *error))failedHandler
               always:(void (^)())always;


+ (void)improvementsList:(void (^)(NSString *response))successHandler
                onFailed:(void (^)(NSError *error))failedHandler
                  always:(void (^)())always;

+ (void)regularDocumentsList:(void (^)(NSString *response))successHandler
                    onFailed:(void (^)(NSError *error))failedHandler
                      always:(void (^)())always;

+ (void)standardDcumentsList:(void (^)(NSString *response))successHandler
                    onFailed:(void (^)(NSError *error))failedHandler
                      always:(void (^)())always;
@end
