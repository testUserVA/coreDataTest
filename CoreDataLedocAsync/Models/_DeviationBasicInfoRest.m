// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DeviationBasicInfoRest.m instead.

#import "_DeviationBasicInfoRest.h"

@implementation DeviationBasicInfoRestID
@end

@implementation _DeviationBasicInfoRest

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"DeviationBasicInfoRest" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"DeviationBasicInfoRest";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"DeviationBasicInfoRest" inManagedObjectContext:moc_];
}

- (DeviationBasicInfoRestID*)objectID {
	return (DeviationBasicInfoRestID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"acceptingEmployeeIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"acceptingEmployeeId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"createdByValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"createdBy"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"deviationCategoryValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"deviationCategory"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"deviationIDValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"deviationID"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"deviationStatusValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"deviationStatus"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"deviationTypeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"deviationType"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"isArchivedValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"isArchived"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"isMonitoredValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"isMonitored"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"responsibleEmployeeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"responsibleEmployee"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic acceptingEmployeeId;

- (int32_t)acceptingEmployeeIdValue {
	NSNumber *result = [self acceptingEmployeeId];
	return [result intValue];
}

- (void)setAcceptingEmployeeIdValue:(int32_t)value_ {
	[self setAcceptingEmployeeId:@(value_)];
}

- (int32_t)primitiveAcceptingEmployeeIdValue {
	NSNumber *result = [self primitiveAcceptingEmployeeId];
	return [result intValue];
}

- (void)setPrimitiveAcceptingEmployeeIdValue:(int32_t)value_ {
	[self setPrimitiveAcceptingEmployeeId:@(value_)];
}

@dynamic createdBy;

- (int32_t)createdByValue {
	NSNumber *result = [self createdBy];
	return [result intValue];
}

- (void)setCreatedByValue:(int32_t)value_ {
	[self setCreatedBy:@(value_)];
}

- (int32_t)primitiveCreatedByValue {
	NSNumber *result = [self primitiveCreatedBy];
	return [result intValue];
}

- (void)setPrimitiveCreatedByValue:(int32_t)value_ {
	[self setPrimitiveCreatedBy:@(value_)];
}

@dynamic deadlineDate;

@dynamic deviationCategory;

- (int32_t)deviationCategoryValue {
	NSNumber *result = [self deviationCategory];
	return [result intValue];
}

- (void)setDeviationCategoryValue:(int32_t)value_ {
	[self setDeviationCategory:@(value_)];
}

- (int32_t)primitiveDeviationCategoryValue {
	NSNumber *result = [self primitiveDeviationCategory];
	return [result intValue];
}

- (void)setPrimitiveDeviationCategoryValue:(int32_t)value_ {
	[self setPrimitiveDeviationCategory:@(value_)];
}

@dynamic deviationID;

- (int32_t)deviationIDValue {
	NSNumber *result = [self deviationID];
	return [result intValue];
}

- (void)setDeviationIDValue:(int32_t)value_ {
	[self setDeviationID:@(value_)];
}

- (int32_t)primitiveDeviationIDValue {
	NSNumber *result = [self primitiveDeviationID];
	return [result intValue];
}

- (void)setPrimitiveDeviationIDValue:(int32_t)value_ {
	[self setPrimitiveDeviationID:@(value_)];
}

@dynamic deviationStatus;

- (int32_t)deviationStatusValue {
	NSNumber *result = [self deviationStatus];
	return [result intValue];
}

- (void)setDeviationStatusValue:(int32_t)value_ {
	[self setDeviationStatus:@(value_)];
}

- (int32_t)primitiveDeviationStatusValue {
	NSNumber *result = [self primitiveDeviationStatus];
	return [result intValue];
}

- (void)setPrimitiveDeviationStatusValue:(int32_t)value_ {
	[self setPrimitiveDeviationStatus:@(value_)];
}

@dynamic deviationType;

- (int32_t)deviationTypeValue {
	NSNumber *result = [self deviationType];
	return [result intValue];
}

- (void)setDeviationTypeValue:(int32_t)value_ {
	[self setDeviationType:@(value_)];
}

- (int32_t)primitiveDeviationTypeValue {
	NSNumber *result = [self primitiveDeviationType];
	return [result intValue];
}

- (void)setPrimitiveDeviationTypeValue:(int32_t)value_ {
	[self setPrimitiveDeviationType:@(value_)];
}

@dynamic isArchived;

- (BOOL)isArchivedValue {
	NSNumber *result = [self isArchived];
	return [result boolValue];
}

- (void)setIsArchivedValue:(BOOL)value_ {
	[self setIsArchived:@(value_)];
}

- (BOOL)primitiveIsArchivedValue {
	NSNumber *result = [self primitiveIsArchived];
	return [result boolValue];
}

- (void)setPrimitiveIsArchivedValue:(BOOL)value_ {
	[self setPrimitiveIsArchived:@(value_)];
}

@dynamic isMonitored;

- (BOOL)isMonitoredValue {
	NSNumber *result = [self isMonitored];
	return [result boolValue];
}

- (void)setIsMonitoredValue:(BOOL)value_ {
	[self setIsMonitored:@(value_)];
}

- (BOOL)primitiveIsMonitoredValue {
	NSNumber *result = [self primitiveIsMonitored];
	return [result boolValue];
}

- (void)setPrimitiveIsMonitoredValue:(BOOL)value_ {
	[self setPrimitiveIsMonitored:@(value_)];
}

@dynamic name;

@dynamic previewImage;

@dynamic reportedDate;

@dynamic responsibleEmployee;

- (int32_t)responsibleEmployeeValue {
	NSNumber *result = [self responsibleEmployee];
	return [result intValue];
}

- (void)setResponsibleEmployeeValue:(int32_t)value_ {
	[self setResponsibleEmployee:@(value_)];
}

- (int32_t)primitiveResponsibleEmployeeValue {
	NSNumber *result = [self primitiveResponsibleEmployee];
	return [result intValue];
}

- (void)setPrimitiveResponsibleEmployeeValue:(int32_t)value_ {
	[self setPrimitiveResponsibleEmployee:@(value_)];
}

@end

@implementation DeviationBasicInfoRestAttributes 
+ (NSString *)acceptingEmployeeId {
	return @"acceptingEmployeeId";
}
+ (NSString *)createdBy {
	return @"createdBy";
}
+ (NSString *)deadlineDate {
	return @"deadlineDate";
}
+ (NSString *)deviationCategory {
	return @"deviationCategory";
}
+ (NSString *)deviationID {
	return @"deviationID";
}
+ (NSString *)deviationStatus {
	return @"deviationStatus";
}
+ (NSString *)deviationType {
	return @"deviationType";
}
+ (NSString *)isArchived {
	return @"isArchived";
}
+ (NSString *)isMonitored {
	return @"isMonitored";
}
+ (NSString *)name {
	return @"name";
}
+ (NSString *)previewImage {
	return @"previewImage";
}
+ (NSString *)reportedDate {
	return @"reportedDate";
}
+ (NSString *)responsibleEmployee {
	return @"responsibleEmployee";
}
@end

