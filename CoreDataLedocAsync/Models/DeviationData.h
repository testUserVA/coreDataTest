//
//  DeviationData.h
//  Ledoc
//
//  Created by Dariusz Mazur on 11/07/14.
//  Copyright (c) 2014 daro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DeviationData : NSObject

@property (nonatomic) long objId;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *translateDescription;
@property (nonatomic, strong) NSString *type;


+ (id)createObject:(NSDictionary*)dictionary;

- (id)initWithDictionary:(NSDictionary*)dictionary;


@end
