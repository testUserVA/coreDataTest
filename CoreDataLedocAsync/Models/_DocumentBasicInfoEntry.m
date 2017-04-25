// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DocumentBasicInfoEntry.m instead.

#import "_DocumentBasicInfoEntry.h"

@implementation DocumentBasicInfoEntryID
@end

@implementation _DocumentBasicInfoEntry

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"DocumentBasicInfoEntry" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"DocumentBasicInfoEntry";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"DocumentBasicInfoEntry" inManagedObjectContext:moc_];
}

- (DocumentBasicInfoEntryID*)objectID {
	return (DocumentBasicInfoEntryID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"categoryIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"categoryId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"documentIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"documentId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"documentParentIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"documentParentId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"documentStatusIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"documentStatusId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"documentTypeIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"documentTypeId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"frequencyIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"frequencyId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"isArchivedValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"isArchived"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"isLinkToTheShopValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"isLinkToTheShop"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"isMonitoredValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"isMonitored"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"isPrivateValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"isPrivate"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"objectStatusValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"objectStatus"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"ownerIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"ownerId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"shouldBeInspectedValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"shouldBeInspected"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"subcategoryIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"subcategoryId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic additionalDetails;

@dynamic categoryId;

- (int32_t)categoryIdValue {
	NSNumber *result = [self categoryId];
	return [result intValue];
}

- (void)setCategoryIdValue:(int32_t)value_ {
	[self setCategoryId:@(value_)];
}

- (int32_t)primitiveCategoryIdValue {
	NSNumber *result = [self primitiveCategoryId];
	return [result intValue];
}

- (void)setPrimitiveCategoryIdValue:(int32_t)value_ {
	[self setPrimitiveCategoryId:@(value_)];
}

@dynamic documentId;

- (int32_t)documentIdValue {
	NSNumber *result = [self documentId];
	return [result intValue];
}

- (void)setDocumentIdValue:(int32_t)value_ {
	[self setDocumentId:@(value_)];
}

- (int32_t)primitiveDocumentIdValue {
	NSNumber *result = [self primitiveDocumentId];
	return [result intValue];
}

- (void)setPrimitiveDocumentIdValue:(int32_t)value_ {
	[self setPrimitiveDocumentId:@(value_)];
}

@dynamic documentParentId;

- (int32_t)documentParentIdValue {
	NSNumber *result = [self documentParentId];
	return [result intValue];
}

- (void)setDocumentParentIdValue:(int32_t)value_ {
	[self setDocumentParentId:@(value_)];
}

- (int32_t)primitiveDocumentParentIdValue {
	NSNumber *result = [self primitiveDocumentParentId];
	return [result intValue];
}

- (void)setPrimitiveDocumentParentIdValue:(int32_t)value_ {
	[self setPrimitiveDocumentParentId:@(value_)];
}

@dynamic documentStatusId;

- (int32_t)documentStatusIdValue {
	NSNumber *result = [self documentStatusId];
	return [result intValue];
}

- (void)setDocumentStatusIdValue:(int32_t)value_ {
	[self setDocumentStatusId:@(value_)];
}

- (int32_t)primitiveDocumentStatusIdValue {
	NSNumber *result = [self primitiveDocumentStatusId];
	return [result intValue];
}

- (void)setPrimitiveDocumentStatusIdValue:(int32_t)value_ {
	[self setPrimitiveDocumentStatusId:@(value_)];
}

@dynamic documentTypeId;

- (int32_t)documentTypeIdValue {
	NSNumber *result = [self documentTypeId];
	return [result intValue];
}

- (void)setDocumentTypeIdValue:(int32_t)value_ {
	[self setDocumentTypeId:@(value_)];
}

- (int32_t)primitiveDocumentTypeIdValue {
	NSNumber *result = [self primitiveDocumentTypeId];
	return [result intValue];
}

- (void)setPrimitiveDocumentTypeIdValue:(int32_t)value_ {
	[self setPrimitiveDocumentTypeId:@(value_)];
}

@dynamic frequencyId;

- (int32_t)frequencyIdValue {
	NSNumber *result = [self frequencyId];
	return [result intValue];
}

- (void)setFrequencyIdValue:(int32_t)value_ {
	[self setFrequencyId:@(value_)];
}

- (int32_t)primitiveFrequencyIdValue {
	NSNumber *result = [self primitiveFrequencyId];
	return [result intValue];
}

- (void)setPrimitiveFrequencyIdValue:(int32_t)value_ {
	[self setPrimitiveFrequencyId:@(value_)];
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

@dynamic isLinkToTheShop;

- (BOOL)isLinkToTheShopValue {
	NSNumber *result = [self isLinkToTheShop];
	return [result boolValue];
}

- (void)setIsLinkToTheShopValue:(BOOL)value_ {
	[self setIsLinkToTheShop:@(value_)];
}

- (BOOL)primitiveIsLinkToTheShopValue {
	NSNumber *result = [self primitiveIsLinkToTheShop];
	return [result boolValue];
}

- (void)setPrimitiveIsLinkToTheShopValue:(BOOL)value_ {
	[self setPrimitiveIsLinkToTheShop:@(value_)];
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

@dynamic isPrivate;

- (BOOL)isPrivateValue {
	NSNumber *result = [self isPrivate];
	return [result boolValue];
}

- (void)setIsPrivateValue:(BOOL)value_ {
	[self setIsPrivate:@(value_)];
}

- (BOOL)primitiveIsPrivateValue {
	NSNumber *result = [self primitiveIsPrivate];
	return [result boolValue];
}

- (void)setPrimitiveIsPrivateValue:(BOOL)value_ {
	[self setPrimitiveIsPrivate:@(value_)];
}

@dynamic link;

@dynamic locationsNamesSeparatedByComa;

@dynamic locationsStringList;

@dynamic manualId;

@dynamic name;

@dynamic objectStatus;

- (int32_t)objectStatusValue {
	NSNumber *result = [self objectStatus];
	return [result intValue];
}

- (void)setObjectStatusValue:(int32_t)value_ {
	[self setObjectStatus:@(value_)];
}

- (int32_t)primitiveObjectStatusValue {
	NSNumber *result = [self primitiveObjectStatus];
	return [result intValue];
}

- (void)setPrimitiveObjectStatusValue:(int32_t)value_ {
	[self setPrimitiveObjectStatus:@(value_)];
}

@dynamic ownerId;

- (int32_t)ownerIdValue {
	NSNumber *result = [self ownerId];
	return [result intValue];
}

- (void)setOwnerIdValue:(int32_t)value_ {
	[self setOwnerId:@(value_)];
}

- (int32_t)primitiveOwnerIdValue {
	NSNumber *result = [self primitiveOwnerId];
	return [result intValue];
}

- (void)setPrimitiveOwnerIdValue:(int32_t)value_ {
	[self setPrimitiveOwnerId:@(value_)];
}

@dynamic physicalLocation;

@dynamic searchableLocationsNamesSeparatedByComa;

@dynamic shouldBeInspected;

- (BOOL)shouldBeInspectedValue {
	NSNumber *result = [self shouldBeInspected];
	return [result boolValue];
}

- (void)setShouldBeInspectedValue:(BOOL)value_ {
	[self setShouldBeInspected:@(value_)];
}

- (BOOL)primitiveShouldBeInspectedValue {
	NSNumber *result = [self primitiveShouldBeInspected];
	return [result boolValue];
}

- (void)setPrimitiveShouldBeInspectedValue:(BOOL)value_ {
	[self setPrimitiveShouldBeInspected:@(value_)];
}

@dynamic subcategoryId;

- (int32_t)subcategoryIdValue {
	NSNumber *result = [self subcategoryId];
	return [result intValue];
}

- (void)setSubcategoryIdValue:(int32_t)value_ {
	[self setSubcategoryId:@(value_)];
}

- (int32_t)primitiveSubcategoryIdValue {
	NSNumber *result = [self primitiveSubcategoryId];
	return [result intValue];
}

- (void)setPrimitiveSubcategoryIdValue:(int32_t)value_ {
	[self setPrimitiveSubcategoryId:@(value_)];
}

@dynamic tradesStringList;

@end

@implementation DocumentBasicInfoEntryAttributes 
+ (NSString *)additionalDetails {
	return @"additionalDetails";
}
+ (NSString *)categoryId {
	return @"categoryId";
}
+ (NSString *)documentId {
	return @"documentId";
}
+ (NSString *)documentParentId {
	return @"documentParentId";
}
+ (NSString *)documentStatusId {
	return @"documentStatusId";
}
+ (NSString *)documentTypeId {
	return @"documentTypeId";
}
+ (NSString *)frequencyId {
	return @"frequencyId";
}
+ (NSString *)isArchived {
	return @"isArchived";
}
+ (NSString *)isLinkToTheShop {
	return @"isLinkToTheShop";
}
+ (NSString *)isMonitored {
	return @"isMonitored";
}
+ (NSString *)isPrivate {
	return @"isPrivate";
}
+ (NSString *)link {
	return @"link";
}
+ (NSString *)locationsNamesSeparatedByComa {
	return @"locationsNamesSeparatedByComa";
}
+ (NSString *)locationsStringList {
	return @"locationsStringList";
}
+ (NSString *)manualId {
	return @"manualId";
}
+ (NSString *)name {
	return @"name";
}
+ (NSString *)objectStatus {
	return @"objectStatus";
}
+ (NSString *)ownerId {
	return @"ownerId";
}
+ (NSString *)physicalLocation {
	return @"physicalLocation";
}
+ (NSString *)searchableLocationsNamesSeparatedByComa {
	return @"searchableLocationsNamesSeparatedByComa";
}
+ (NSString *)shouldBeInspected {
	return @"shouldBeInspected";
}
+ (NSString *)subcategoryId {
	return @"subcategoryId";
}
+ (NSString *)tradesStringList {
	return @"tradesStringList";
}
@end

