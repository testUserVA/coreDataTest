//
//  DeviationData.m
//  Ledoc
//
//  Created by Dariusz Mazur on 11/07/14.
//  Copyright (c) 2014 daro. All rights reserved.
//

#import "DeviationData.h"

@implementation DeviationData

@synthesize objId;
@synthesize name;
@synthesize translateDescription;
@synthesize type;

+ (id)createObject:(NSDictionary*)dictionary
{
	id obj = [[DeviationData alloc] initWithDictionary:dictionary];
	return obj;
}


- (id)initWithDictionary:(NSDictionary*)dictionary
{
	self = [super init];
	if(self) {
		if(!dictionary || [dictionary isEqual:[NSNull null]])
			return nil;
        
		if([dictionary objectForKey:@"id"] && ![[dictionary objectForKey:@"id"] isEqual:[NSNull null]])
			objId = [[dictionary objectForKey:@"id"] longValue];
        
		if([dictionary objectForKey:@"name"] && ![[dictionary objectForKey:@"name"] isEqual:[NSNull null]])
			name = [dictionary objectForKey:@"name"];
        
		if([dictionary objectForKey:@"description"] && ![[dictionary objectForKey:@"description"] isEqual:[NSNull null]])
			translateDescription = [dictionary objectForKey:@"description"];
	}
	return self;
}

- (NSString *)getTranslatedDescription
{
    if(!self.translateDescription)
        return @"";
    return self.translateDescription;
}

- (NSString *)description
{
    
    if(!self.translateDescription)
        return @"";
    return self.translateDescription;
    
    //if(!self.name)
    //   return @"";
    //return self.name;
}

@end
