// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DeviationDetailsRest.m instead.

#import "_DeviationDetailsRest.h"

@implementation DeviationDetailsRestID
@end

@implementation _DeviationDetailsRest

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"DeviationDetailsRest" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"DeviationDetailsRest";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"DeviationDetailsRest" inManagedObjectContext:moc_];
}

- (DeviationDetailsRestID*)objectID {
	return (DeviationDetailsRestID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"photoIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"photoId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"spentMoneyValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"spentMoney"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"supplierValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"supplier"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic cause;

@dynamic howToPrevent;

@dynamic locationRestIdList;

@dynamic photo;

@dynamic photoId;

- (int32_t)photoIdValue {
	NSNumber *result = [self photoId];
	return [result intValue];
}

- (void)setPhotoIdValue:(int32_t)value_ {
	[self setPhotoId:@(value_)];
}

- (int32_t)primitivePhotoIdValue {
	NSNumber *result = [self primitivePhotoId];
	return [result intValue];
}

- (void)setPrimitivePhotoIdValue:(int32_t)value_ {
	[self setPrimitivePhotoId:@(value_)];
}

@dynamic recommendedSolution;

@dynamic reference;

@dynamic searchableLocationRestIdList;

@dynamic spentMoney;

- (int32_t)spentMoneyValue {
	NSNumber *result = [self spentMoney];
	return [result intValue];
}

- (void)setSpentMoneyValue:(int32_t)value_ {
	[self setSpentMoney:@(value_)];
}

- (int32_t)primitiveSpentMoneyValue {
	NSNumber *result = [self primitiveSpentMoney];
	return [result intValue];
}

- (void)setPrimitiveSpentMoneyValue:(int32_t)value_ {
	[self setPrimitiveSpentMoney:@(value_)];
}

@dynamic spentTime;

@dynamic supplier;

- (int32_t)supplierValue {
	NSNumber *result = [self supplier];
	return [result intValue];
}

- (void)setSupplierValue:(int32_t)value_ {
	[self setSupplier:@(value_)];
}

- (int32_t)primitiveSupplierValue {
	NSNumber *result = [self primitiveSupplier];
	return [result intValue];
}

- (void)setPrimitiveSupplierValue:(int32_t)value_ {
	[self setPrimitiveSupplier:@(value_)];
}

@dynamic whatHappened;

@end

@implementation DeviationDetailsRestAttributes 
+ (NSString *)cause {
	return @"cause";
}
+ (NSString *)howToPrevent {
	return @"howToPrevent";
}
+ (NSString *)locationRestIdList {
	return @"locationRestIdList";
}
+ (NSString *)photo {
	return @"photo";
}
+ (NSString *)photoId {
	return @"photoId";
}
+ (NSString *)recommendedSolution {
	return @"recommendedSolution";
}
+ (NSString *)reference {
	return @"reference";
}
+ (NSString *)searchableLocationRestIdList {
	return @"searchableLocationRestIdList";
}
+ (NSString *)spentMoney {
	return @"spentMoney";
}
+ (NSString *)spentTime {
	return @"spentTime";
}
+ (NSString *)supplier {
	return @"supplier";
}
+ (NSString *)whatHappened {
	return @"whatHappened";
}
@end

