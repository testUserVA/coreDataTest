#import "ResponseDocumentationList.h"


@implementation DocDataModel

@synthesize attachmentID;
@synthesize contentType;
@synthesize name;


+ (id)createObject:(NSDictionary*)dictionary
{
	id obj = [[DocDataModel alloc] initWithDictionary:dictionary];
	return obj;
}


- (id) initWithDictionary:(NSDictionary*)dictionary
{
	self = [super init];
	if(self) {
        if(!dictionary || [dictionary isEqual:[NSNull null]]) {
			return nil;
        }
        if([dictionary objectForKey:@"attachmentID"] && ![[dictionary objectForKey:@"attachmentID"] isEqual:[NSNull null]]) {
			attachmentID = [[dictionary objectForKey:@"attachmentID"] longValue];
        }
        if([dictionary objectForKey:@"contentType"] && ![[dictionary objectForKey:@"contentType"] isEqual:[NSNull null]]) {
			contentType = [dictionary objectForKey:@"contentType"];
        }
        if([dictionary objectForKey:@"name"] && ![[dictionary objectForKey:@"name"] isEqual:[NSNull null]]) {
			name = [dictionary objectForKey:@"name"];
        }

	}
	return self;
}

@end




@implementation ResponseDocumentationList

@synthesize status;
@synthesize message;
@synthesize data;
@synthesize user_ID;


+ (id)createObject:(NSDictionary*)dictionary
{
	id obj = [[ResponseDocumentationList alloc] initWithDictionary:dictionary];
	return obj;
}

- (id) initWithDictionary:(NSDictionary*)dictionary
{
	self = [super init];
	if(self) {
        
        if(!dictionary || [dictionary isEqual:[NSNull null]]){
			return nil;
        }

        if([dictionary objectForKey:@"status"] && ![[dictionary objectForKey:@"status"] isEqual:[NSNull null]]){
			status = [dictionary objectForKey:@"status"];
        }
        
        if([dictionary objectForKey:@"message"] && ![[dictionary objectForKey:@"message"] isEqual:[NSNull null]]){
			message = [dictionary objectForKey:@"message"];
        }
        
        if(![dictionary objectForKey:@"data"] && [[dictionary objectForKey:@"data"] isEqual:[NSNull null]]){
            return nil;
        }
        
		NSArray* temp = [dictionary objectForKey:@"data"];
        
        if (![temp isKindOfClass: [NSArray class]]) {
            return nil;
        }
        
        data = [[NSMutableArray alloc] init];
		for (NSDictionary *d in temp) {
			[data addObject:[DocDataModel createObject:d]];
		}
        
        if([dictionary objectForKey:@"user_ID"] && ![[dictionary objectForKey:@"user_ID"] isEqual:[NSNull null]]){
			user_ID = [dictionary objectForKey:@"user_ID"];
        }

	}
	return self;
}

@end




