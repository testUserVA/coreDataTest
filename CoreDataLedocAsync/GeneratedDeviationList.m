#import "GeneratedDeviationList.h"

#import "DeviationDetailsRest.h"

@implementation DataModelDeviation

+ (id)createObject:(NSDictionary*)dictionary
{
	id obj = [[DataModelDeviation alloc] initWithDictionary:dictionary isNotify:NO];
	return obj;
}

- (id)initWithDictionary:(NSArray*)array isNotify:(BOOL)isNotify
{
	self = [super init];
	if(self) {
		if(!array || [array isEqual:[NSNull null]])
			return nil;
        
        self.detailList = [[NSMutableArray alloc] init];
        for (NSDictionary *deviation in array) {
            [self.detailList addObject:[DeviationDetailsRest initDetailDeviation:deviation]];
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


@implementation GeneratedDeviationList

@synthesize message;
@synthesize data;
@synthesize user_ID;


+ (id)createObject:(NSDictionary*)dictionary
{
	id obj = [[GeneratedDeviationList alloc] initWithDictionary:dictionary isNotify:NO];
	return obj;
}

+ (id)createObjectWithNotification:(NSDictionary*)dictionary
{
	id obj = [[GeneratedDeviationList alloc] initWithDictionary:dictionary isNotify:YES];
	return obj;
}

- (id) initWithDictionary:(NSDictionary*)dictionary isNotify:(BOOL)isNotify
{
	self = [super init];
	if(self) {
		if(!dictionary || [dictionary isEqual:[NSNull null]])
			return nil;

		if([dictionary objectForKey:@"message"] && ![[dictionary objectForKey:@"message"] isEqual:[NSNull null]])
			message = [dictionary objectForKey:@"message"];
        
		data = [[DataModelDeviation alloc] initWithDictionary:[dictionary objectForKey:@"data"] isNotify:isNotify];
        
		if([dictionary objectForKey:@"user_ID"] && ![[dictionary objectForKey:@"user_ID"] isEqual:[NSNull null]])
			user_ID = [dictionary objectForKey:@"user_ID"];

	}
	return self;
}

@end


@implementation GeneratedDeviationAddEdit
@synthesize message;
@synthesize data;
@synthesize user_ID;


+ (id)createObject:(NSDictionary*)dictionary
{
	id obj = [[GeneratedDeviationAddEdit alloc] initWithDictionary:dictionary];
	return obj;
}

- (id) initWithDictionary:(NSDictionary*)dictionary
{
	self = [super init];
	if(self) {
		if(!dictionary || [dictionary isEqual:[NSNull null]])
			return nil;
        
        //TODO: Add Status
        
		if([dictionary objectForKey:@"message"] && ![[dictionary objectForKey:@"message"] isEqual:[NSNull null]])
			message = [dictionary objectForKey:@"message"];
        
		data = [[DataModelAddEditDeviation alloc] initWithDictionary:[dictionary objectForKey:@"data"]];
        
		if([dictionary objectForKey:@"user_ID"] && ![[dictionary objectForKey:@"user_ID"] isEqual:[NSNull null]])
			user_ID = [dictionary objectForKey:@"user_ID"];
        
	}
	return self;
}

@end


@implementation DataModelAddEditDeviation

@synthesize updated;
@synthesize rejected;


+ (id)createObject:(NSDictionary*)dictionary
{
	id obj = [[DataModelAddEditDeviation alloc] initWithDictionary:dictionary];
	return obj;
}

- (id)initWithDictionary:(NSDictionary*)dictionary
{
	self = [super init];
	if(self) {
		if(!dictionary || [dictionary isEqual:[NSNull null]])
			return nil;
        
        
        /// TODO: updated deviations
		NSArray* temp = [dictionary objectForKey:@"updated"];
        if(temp && ![temp isEqual:[NSNull null]]) {
            updated = [[NSMutableArray alloc] init];
            
//            for (NSDictionary *d in temp) {
//              //  [updated addObject:[Deviation initDeviation:d]];
//            }
        }
        
        temp = [dictionary objectForKey:@"rejected"];
        if(temp && ![temp isEqual:[NSNull null]]) {
            rejected = [[NSMutableArray alloc] init];
//            for (NSDictionary *d in temp) {
//              //  [rejected addObject:[Deviation initDeviation:d]];
//            };
        }

	}
	return self;
}

@end

