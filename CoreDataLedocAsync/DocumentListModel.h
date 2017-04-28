//
//  DocumentListModel.h
//  Ledoc
//
//  Created by macstorm on 28/09/15.
//  Copyright (c) 2015 daro. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface DataModelDocument : NSObject

@property(nonatomic, strong) NSMutableArray *detailList;

+ (id)createObject:(NSDictionary*)dictionary;
- (id)initWithDictionary:(NSDictionary*)dictionary isNotify:(BOOL)isNotify;

@end


@interface DocumentListModel : NSObject

@property(nonatomic, strong) NSString *message;
@property(nonatomic, strong) DataModelDocument *data;
@property(nonatomic, strong) NSString *user_ID;

+ (id)createObject:(NSDictionary*)dictionary;
+ (id)createObjectWithNotification:(NSDictionary*)dictionary;
- (id)initWithDictionary:(NSDictionary*)dictionary isNotify:(BOOL)isNotify;

@end