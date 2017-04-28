#import "_DocumentDetailsEntry.h"

@interface DocumentDetailsEntry : _DocumentDetailsEntry {}

+ (DocumentDetailsEntry *)newInstance:(int)docId;

///init details document from json dictionary object
+ (DocumentDetailsEntry *)initDetailDocument:(NSDictionary *)obj;

- (void)updateAdditionalSearchableFields;

- (NSString *)description;

@end
