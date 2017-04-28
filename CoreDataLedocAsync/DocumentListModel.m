//
//  DocumentListModel.m
//  Ledoc
//
//  Created by macstorm on 28/09/15.
//  Copyright (c) 2015 daro. All rights reserved.
//

//#import "Utils.h"
#import "DocumentListModel.h"
#import "DocumentDetailsEntry.h"

@implementation DataModelDocument

+ (id)createObject:(NSDictionary*)dictionary
{
    id obj = [[DataModelDocument alloc] initWithDictionary:dictionary isNotify:NO];
    return obj;
}

- (id)initWithDictionary:(NSArray*)array isNotify:(BOOL)isNotify
{
    self = [super init];
    if(self) {
        if(!array || [array isEqual:[NSNull null]])
            return nil;
        
        self.detailList = [[NSMutableArray alloc] init];
        for (NSDictionary *document in array) {
            [self.detailList addObject:[DocumentDetailsEntry initDetailDocument:document]];
            if(isNotify) {
//                [Utils runOnMainThread:^{
//                    [[NSNotificationCenter defaultCenter] postNotificationName:NOTIFY_INCREMENT object:nil];
//                }];
            }
        }
    }
    return self;
}

@end


@implementation DocumentListModel

@synthesize message;
@synthesize data;
@synthesize user_ID;

+ (id)createObject:(NSDictionary*)dictionary
{
    id obj = [[DocumentListModel alloc] initWithDictionary:dictionary isNotify:NO];
    return obj;
}

+ (id)createObjectWithNotification:(NSDictionary*)dictionary
{
    id obj = [[DocumentListModel alloc] initWithDictionary:dictionary isNotify:YES];
    return obj;
}

- (id)initWithDictionary:(NSDictionary*)dictionary isNotify:(BOOL)isNotify
{
    self = [super init];
    if(self) {
        if(!dictionary || [dictionary isEqual:[NSNull null]])
            return nil;
        
        if([dictionary objectForKey:@"message"] && ![[dictionary objectForKey:@"message"] isEqual:[NSNull null]])
            message = [dictionary objectForKey:@"message"];
        
        data = [[DataModelDocument alloc] initWithDictionary:[dictionary objectForKey:@"data"] isNotify:isNotify];
        
        if([dictionary objectForKey:@"user_ID"] && ![[dictionary objectForKey:@"user_ID"] isEqual:[NSNull null]])
            user_ID = [dictionary objectForKey:@"user_ID"];
        
    }
    return self;
}

@end