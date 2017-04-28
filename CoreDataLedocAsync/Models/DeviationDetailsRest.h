#import "_DeviationDetailsRest.h"

@interface DeviationDetailsRest : _DeviationDetailsRest {}

+ (DeviationDetailsRest *)newInstance:(int)devId;

///init detailsdeviation from json dictionary object
+ (DeviationDetailsRest *)initDetailDeviation:(NSDictionary *)obj;

- (NSString *)description;

@end

