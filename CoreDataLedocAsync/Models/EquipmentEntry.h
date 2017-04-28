#import "_EquipmentEntry.h"


@interface EquipmentEntry : _EquipmentEntry {}

@property (nonatomic, strong) NSString *errorMessage;

+ (EquipmentEntry*)newInstance:(int)equId;

/**
 * Init equipment from json dictionary obiect
 */
+ (EquipmentEntry*)initEquipment:(NSDictionary *)obj;

@end
