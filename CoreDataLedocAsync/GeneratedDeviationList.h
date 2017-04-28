#import <Foundation/Foundation.h>
#import "JSONKit.h"



@interface DataModelDeviation : NSObject

@property(nonatomic, strong) NSMutableArray *detailList;

+ (id)createObject:(NSDictionary*)dictionary;

- (id)initWithDictionary:(NSDictionary*)dictionary isNotify:(BOOL)isNotify;

@end


@interface GeneratedDeviationList : NSObject 

@property(nonatomic, strong) NSString *message;
@property(nonatomic, strong) DataModelDeviation *data;
@property(nonatomic, strong) NSString *user_ID;

+ (id)createObject:(NSDictionary*)dictionary;
+ (id)createObjectWithNotification:(NSDictionary*)dictionary;

- (id) initWithDictionary:(NSDictionary*)dictionary isNotify:(BOOL)isNotify;

@end


@interface DataModelAddEditDeviation : NSObject

@property(nonatomic, strong) NSMutableArray *updated;
@property(nonatomic, strong) NSMutableArray *rejected;

+ (id)createObject:(NSDictionary*)dictionary;
- (id)initWithDictionary:(NSDictionary*)dictionary;

@end


@interface GeneratedDeviationAddEdit : NSObject

@property(nonatomic, strong) NSString *message;
@property(nonatomic, strong) DataModelAddEditDeviation *data;
@property(nonatomic, strong) NSString *user_ID;

+ (id)createObject:(NSDictionary*)dictionary;

- (id) initWithDictionary:(NSDictionary*)dictionary;

@end