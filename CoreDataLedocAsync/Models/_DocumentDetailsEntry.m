// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DocumentDetailsEntry.m instead.

#import "_DocumentDetailsEntry.h"

@implementation DocumentDetailsEntryID
@end

@implementation _DocumentDetailsEntry

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"DocumentDetailsEntry" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"DocumentDetailsEntry";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"DocumentDetailsEntry" inManagedObjectContext:moc_];
}

- (DocumentDetailsEntryID*)objectID {
	return (DocumentDetailsEntryID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"reviewStatusValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"reviewStatus"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"scopeIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"scopeId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"uploadedByIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"uploadedById"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"versionNumberValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"versionNumber"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic changeSummary;

@dynamic createdOn;

@dynamic fileName;

@dynamic lastReview;

@dynamic nextReview;

@dynamic reviewStatus;

- (BOOL)reviewStatusValue {
	NSNumber *result = [self reviewStatus];
	return [result boolValue];
}

- (void)setReviewStatusValue:(BOOL)value_ {
	[self setReviewStatus:@(value_)];
}

- (BOOL)primitiveReviewStatusValue {
	NSNumber *result = [self primitiveReviewStatus];
	return [result boolValue];
}

- (void)setPrimitiveReviewStatusValue:(BOOL)value_ {
	[self setPrimitiveReviewStatus:@(value_)];
}

@dynamic scopeId;

- (int32_t)scopeIdValue {
	NSNumber *result = [self scopeId];
	return [result intValue];
}

- (void)setScopeIdValue:(int32_t)value_ {
	[self setScopeId:@(value_)];
}

- (int32_t)primitiveScopeIdValue {
	NSNumber *result = [self primitiveScopeId];
	return [result intValue];
}

- (void)setPrimitiveScopeIdValue:(int32_t)value_ {
	[self setPrimitiveScopeId:@(value_)];
}

@dynamic uploadedById;

- (int32_t)uploadedByIdValue {
	NSNumber *result = [self uploadedById];
	return [result intValue];
}

- (void)setUploadedByIdValue:(int32_t)value_ {
	[self setUploadedById:@(value_)];
}

- (int32_t)primitiveUploadedByIdValue {
	NSNumber *result = [self primitiveUploadedById];
	return [result intValue];
}

- (void)setPrimitiveUploadedByIdValue:(int32_t)value_ {
	[self setPrimitiveUploadedById:@(value_)];
}

@dynamic versionNumber;

- (int32_t)versionNumberValue {
	NSNumber *result = [self versionNumber];
	return [result intValue];
}

- (void)setVersionNumberValue:(int32_t)value_ {
	[self setVersionNumber:@(value_)];
}

- (int32_t)primitiveVersionNumberValue {
	NSNumber *result = [self primitiveVersionNumber];
	return [result intValue];
}

- (void)setPrimitiveVersionNumberValue:(int32_t)value_ {
	[self setPrimitiveVersionNumber:@(value_)];
}

@end

@implementation DocumentDetailsEntryAttributes 
+ (NSString *)changeSummary {
	return @"changeSummary";
}
+ (NSString *)createdOn {
	return @"createdOn";
}
+ (NSString *)fileName {
	return @"fileName";
}
+ (NSString *)lastReview {
	return @"lastReview";
}
+ (NSString *)nextReview {
	return @"nextReview";
}
+ (NSString *)reviewStatus {
	return @"reviewStatus";
}
+ (NSString *)scopeId {
	return @"scopeId";
}
+ (NSString *)uploadedById {
	return @"uploadedById";
}
+ (NSString *)versionNumber {
	return @"versionNumber";
}
@end

