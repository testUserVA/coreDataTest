#import <Foundation/Foundation.h>
#import "JSONKit.h"




@interface DocDataModel : NSObject

@property(nonatomic) long attachmentID;
@property(nonatomic, strong) NSString *contentType;
@property(nonatomic, strong) NSString *name;


+ (id)createObject:(NSDictionary*)dictionary;

- (id)initWithDictionary:(NSDictionary*)dictionary;

@end


@interface ResponseDocumentationList : NSObject 

@property(nonatomic, strong) NSString *status;
@property(nonatomic, strong) NSString *message;
@property(nonatomic, strong) NSMutableArray *data;
@property(nonatomic, strong) NSString *user_ID;



+ (id)createObject:(NSDictionary*)dictionary;

- (id)initWithDictionary:(NSDictionary*)dictionary;

@end



