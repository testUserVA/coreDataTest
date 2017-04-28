//
//  DataRequest.m
//  Ledoc
//
//  Created by daro on 23/01/14.
//  Copyright (c) 2014 daro. All rights reserved.
//

#import "DataRequest.h"
#import "JSONLoader.h"
#import "Variables.h"
#import "AFNetworking/AFNetworking.h"
#import "LedocUtils.h"
#import "Utils.h"

@implementation DataRequest

#pragma mark - BLOCK BASED REQUEST API

+ (BOOL)isLogoutIfNeeded:(NSString*)responseStr
{
    NSLog(@"NOT IMPLEMENTED isLogoutIfNeeded");
    return NO;
}

+ (void)login:(NSDictionary *)params
    onSuccess:(void (^)(NSString *response))successHandler
     onFailed:(void (^)(NSError *error))failedHandler
       always:(void (^)())always
{
    [DataRequest postRequest:API_LOGIN parameters:params onSuccess:^(NSString *responseString) {
        successHandler(responseString);
    } onFailed:^(NSError *error) {
        failedHandler(error);
    } always:^{
        always();
    }];
}

+ (void)postRequest:(NSString *)postURL
         parameters:(NSDictionary *)parameters
          onSuccess:(void (^)(NSString *responseString))successHandler
           onFailed:(void (^)(NSError *error))failedHandler
             always:(void (^)())always
{
    NSURL *dataURL = [NSURL URLWithString:SERVER_API];
    
    AFHTTPClient *httpClient = [[AFHTTPClient alloc] initWithBaseURL:dataURL];
    [httpClient setParameterEncoding:AFJSONParameterEncoding];
    
    [httpClient setDefaultHeader:@"Content-Type" value:@"application/json"];
    [httpClient setDefaultHeader:@"Accept-Encoding" value:@"UTF-8"];
    [httpClient setDefaultHeader:@"Accept" value:@"application/json"];
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    
    NSMutableURLRequest *request = [httpClient requestWithMethod:@"POST" path:postURL parameters:parameters];
    AFHTTPRequestOperation *operation = [httpClient HTTPRequestOperationWithRequest:request
        success:^(AFHTTPRequestOperation *operation, id responseObject) {
            [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
                NSString *responseStr = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
                
                if([DataRequest isLogoutIfNeeded:responseStr]) {
                    always();
                    return;
                }
                
                if(responseStr) {
                    successHandler(responseStr);
                    always();
                }
            });
            
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
                
        });
    }];
    
     [httpClient enqueueHTTPRequestOperation:operation];
}


+ (void)getRequest:(NSString *)getURL
         onSuccess:(void (^)(NSString *responseString))successHandler
          onFailed:(void (^)(NSError *error))failedHandler
            always:(void (^)())always
{
    NSURL *dataURL = [NSURL URLWithString:SERVER_API];
    AFHTTPClient *httpClient = [[AFHTTPClient alloc] initWithBaseURL:dataURL];
    [httpClient setParameterEncoding:AFJSONParameterEncoding];
    
    [httpClient setDefaultHeader:@"Content-Type" value:@"application/json"];
    [httpClient setDefaultHeader:@"Accept" value:@"application/json"];
    
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    
    [httpClient getPath:getURL parameters:nil
                success:^(AFHTTPRequestOperation *operation, id responseObject)
     {
         [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
         dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
             NSString *responseStr = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
             
             if([DataRequest isLogoutIfNeeded:responseStr]) {
                 always();
                 return;
             }
             
             if(responseStr) {
                 successHandler(responseStr);
                 always();
             }
         });
         
     } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
         [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
         dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
             if(error && [error userInfo]) {
             }
             
             failedHandler(error);
             always();
         });
     }];
}


+ (void)equipmentList:(void (^)(NSString *response))successHandler
             onFailed:(void (^)(NSError *error))failedHandler
             always:(void (^)())always
{
    NSString *userId = [LedocUtils sharedInstance].userId;
    if(!userId)
        return;
    
    int pageSize = 999999;
    int page = 0;
    
    NSString *url = [NSString stringWithFormat:@"%@/%@/%d/%d", API_EQUIPMENT_LIST, userId, page, pageSize];

    [DataRequest getRequest:url onSuccess:successHandler onFailed:failedHandler always:always];
}


+ (void)improvementsList:(void (^)(NSString *response))successHandler
                onFailed:(void (^)(NSError *error))failedHandler
                  always:(void (^)())always
{
    NSString *userId = [LedocUtils sharedInstance].userId;
    if(!userId)
        return;

    NSString *url = [NSString stringWithFormat:@"%@/%@", API_DEVIATION_LIST, userId];
    
    [DataRequest getRequest:url onSuccess:successHandler onFailed:failedHandler always:always];
}

+ (void)regularDocumentsList:(void (^)(NSString *response))successHandler
                    onFailed:(void (^)(NSError *error))failedHandler
                      always:(void (^)())always
{
    NSString *userId = [LedocUtils sharedInstance].userId;
    if(!userId)
        return;
    
    NSString *url = [NSString stringWithFormat:@"%@/%@", API_REGULAR_DOCUMENT_LIST, userId];
  
    [DataRequest getRequest:url onSuccess:successHandler onFailed:failedHandler always:always];
}

+ (void)standardDcumentsList:(void (^)(NSString *response))successHandler
                    onFailed:(void (^)(NSError *error))failedHandler
                      always:(void (^)())always
{
    NSString *userId = [LedocUtils sharedInstance].userId;
    if(!userId)
        return;
    
    NSString *url = [NSString stringWithFormat:@"%@/%@", API_STANDARD_DOCUMENT_LIST, userId];
    
    [DataRequest getRequest:url onSuccess:successHandler onFailed:failedHandler always:always];
}

@end
