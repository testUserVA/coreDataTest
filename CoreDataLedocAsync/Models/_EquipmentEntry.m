// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to EquipmentEntry.m instead.

#import "_EquipmentEntry.h"

@implementation EquipmentEntryID
@end

@implementation _EquipmentEntry

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"EquipmentEntry" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"EquipmentEntry";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"EquipmentEntry" inManagedObjectContext:moc_];
}

- (EquipmentEntryID*)objectID {
	return (EquipmentEntryID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"archivedValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"archived"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"authenticationTypeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"authenticationType"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"canBeLendAcrossLocationsValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"canBeLendAcrossLocations"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"categoryValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"category"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"equIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"equId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"frequencyValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"frequency"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"isResponsibleValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"isResponsible"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"loanLocationValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"loanLocation"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"loanerValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"loaner"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"locationValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"location"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"mainIDValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"mainID"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"monitoringValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"monitoring"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"objectStatusValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"objectStatus"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"ownerValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"owner"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"photoIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"photoId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"quickReviewValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"quickReview"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"readyToLoanValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"readyToLoan"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"readyToUseValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"readyToUse"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"reviewStatusValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"reviewStatus"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"reviewTemplateIdValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"reviewTemplateId"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"reviewedValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"reviewed"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"shouldBeInspectedValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"shouldBeInspected"];
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

@dynamic archived;

- (BOOL)archivedValue {
	NSNumber *result = [self archived];
	return [result boolValue];
}

- (void)setArchivedValue:(BOOL)value_ {
	[self setArchived:@(value_)];
}

- (BOOL)primitiveArchivedValue {
	NSNumber *result = [self primitiveArchived];
	return [result boolValue];
}

- (void)setPrimitiveArchivedValue:(BOOL)value_ {
	[self setPrimitiveArchived:@(value_)];
}

@dynamic authenticationType;

- (int32_t)authenticationTypeValue {
	NSNumber *result = [self authenticationType];
	return [result intValue];
}

- (void)setAuthenticationTypeValue:(int32_t)value_ {
	[self setAuthenticationType:@(value_)];
}

- (int32_t)primitiveAuthenticationTypeValue {
	NSNumber *result = [self primitiveAuthenticationType];
	return [result intValue];
}

- (void)setPrimitiveAuthenticationTypeValue:(int32_t)value_ {
	[self setPrimitiveAuthenticationType:@(value_)];
}

@dynamic borrowerFullName;

@dynamic canBeLendAcrossLocations;

- (BOOL)canBeLendAcrossLocationsValue {
	NSNumber *result = [self canBeLendAcrossLocations];
	return [result boolValue];
}

- (void)setCanBeLendAcrossLocationsValue:(BOOL)value_ {
	[self setCanBeLendAcrossLocations:@(value_)];
}

- (BOOL)primitiveCanBeLendAcrossLocationsValue {
	NSNumber *result = [self primitiveCanBeLendAcrossLocations];
	return [result boolValue];
}

- (void)setPrimitiveCanBeLendAcrossLocationsValue:(BOOL)value_ {
	[self setPrimitiveCanBeLendAcrossLocations:@(value_)];
}

@dynamic category;

- (int32_t)categoryValue {
	NSNumber *result = [self category];
	return [result intValue];
}

- (void)setCategoryValue:(int32_t)value_ {
	[self setCategory:@(value_)];
}

- (int32_t)primitiveCategoryValue {
	NSNumber *result = [self primitiveCategory];
	return [result intValue];
}

- (void)setPrimitiveCategoryValue:(int32_t)value_ {
	[self setPrimitiveCategory:@(value_)];
}

@dynamic categoryDescription;

@dynamic comments;

@dynamic createdOn;

@dynamic equId;

- (int32_t)equIdValue {
	NSNumber *result = [self equId];
	return [result intValue];
}

- (void)setEquIdValue:(int32_t)value_ {
	[self setEquId:@(value_)];
}

- (int32_t)primitiveEquIdValue {
	NSNumber *result = [self primitiveEquId];
	return [result intValue];
}

- (void)setPrimitiveEquIdValue:(int32_t)value_ {
	[self setPrimitiveEquId:@(value_)];
}

@dynamic frequency;

- (int32_t)frequencyValue {
	NSNumber *result = [self frequency];
	return [result intValue];
}

- (void)setFrequencyValue:(int32_t)value_ {
	[self setFrequency:@(value_)];
}

- (int32_t)primitiveFrequencyValue {
	NSNumber *result = [self primitiveFrequency];
	return [result intValue];
}

- (void)setPrimitiveFrequencyValue:(int32_t)value_ {
	[self setPrimitiveFrequency:@(value_)];
}

@dynamic isResponsible;

- (BOOL)isResponsibleValue {
	NSNumber *result = [self isResponsible];
	return [result boolValue];
}

- (void)setIsResponsibleValue:(BOOL)value_ {
	[self setIsResponsible:@(value_)];
}

- (BOOL)primitiveIsResponsibleValue {
	NSNumber *result = [self primitiveIsResponsible];
	return [result boolValue];
}

- (void)setPrimitiveIsResponsibleValue:(BOOL)value_ {
	[self setPrimitiveIsResponsible:@(value_)];
}

@dynamic lastEdit;

@dynamic lastReview;

@dynamic loanComment;

@dynamic loanDeadline;

@dynamic loanLocation;

- (int32_t)loanLocationValue {
	NSNumber *result = [self loanLocation];
	return [result intValue];
}

- (void)setLoanLocationValue:(int32_t)value_ {
	[self setLoanLocation:@(value_)];
}

- (int32_t)primitiveLoanLocationValue {
	NSNumber *result = [self primitiveLoanLocation];
	return [result intValue];
}

- (void)setPrimitiveLoanLocationValue:(int32_t)value_ {
	[self setPrimitiveLoanLocation:@(value_)];
}

@dynamic loanLocationName;

@dynamic loaner;

- (int32_t)loanerValue {
	NSNumber *result = [self loaner];
	return [result intValue];
}

- (void)setLoanerValue:(int32_t)value_ {
	[self setLoaner:@(value_)];
}

- (int32_t)primitiveLoanerValue {
	NSNumber *result = [self primitiveLoaner];
	return [result intValue];
}

- (void)setPrimitiveLoanerValue:(int32_t)value_ {
	[self setPrimitiveLoaner:@(value_)];
}

@dynamic localId;

@dynamic location;

- (int32_t)locationValue {
	NSNumber *result = [self location];
	return [result intValue];
}

- (void)setLocationValue:(int32_t)value_ {
	[self setLocation:@(value_)];
}

- (int32_t)primitiveLocationValue {
	NSNumber *result = [self primitiveLocation];
	return [result intValue];
}

- (void)setPrimitiveLocationValue:(int32_t)value_ {
	[self setPrimitiveLocation:@(value_)];
}

@dynamic mainID;

- (int32_t)mainIDValue {
	NSNumber *result = [self mainID];
	return [result intValue];
}

- (void)setMainIDValue:(int32_t)value_ {
	[self setMainID:@(value_)];
}

- (int32_t)primitiveMainIDValue {
	NSNumber *result = [self primitiveMainID];
	return [result intValue];
}

- (void)setPrimitiveMainIDValue:(int32_t)value_ {
	[self setPrimitiveMainID:@(value_)];
}

@dynamic manualId;

@dynamic manufacturer;

@dynamic monitoring;

- (BOOL)monitoringValue {
	NSNumber *result = [self monitoring];
	return [result boolValue];
}

- (void)setMonitoringValue:(BOOL)value_ {
	[self setMonitoring:@(value_)];
}

- (BOOL)primitiveMonitoringValue {
	NSNumber *result = [self primitiveMonitoring];
	return [result boolValue];
}

- (void)setPrimitiveMonitoringValue:(BOOL)value_ {
	[self setPrimitiveMonitoring:@(value_)];
}

@dynamic name;

@dynamic nextReview;

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

@dynamic owner;

- (int32_t)ownerValue {
	NSNumber *result = [self owner];
	return [result intValue];
}

- (void)setOwnerValue:(int32_t)value_ {
	[self setOwner:@(value_)];
}

- (int32_t)primitiveOwnerValue {
	NSNumber *result = [self primitiveOwner];
	return [result intValue];
}

- (void)setPrimitiveOwnerValue:(int32_t)value_ {
	[self setPrimitiveOwner:@(value_)];
}

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

@dynamic purchaseDate;

@dynamic quickReview;

- (BOOL)quickReviewValue {
	NSNumber *result = [self quickReview];
	return [result boolValue];
}

- (void)setQuickReviewValue:(BOOL)value_ {
	[self setQuickReview:@(value_)];
}

- (BOOL)primitiveQuickReviewValue {
	NSNumber *result = [self primitiveQuickReview];
	return [result boolValue];
}

- (void)setPrimitiveQuickReviewValue:(BOOL)value_ {
	[self setPrimitiveQuickReview:@(value_)];
}

@dynamic readyToLoan;

- (BOOL)readyToLoanValue {
	NSNumber *result = [self readyToLoan];
	return [result boolValue];
}

- (void)setReadyToLoanValue:(BOOL)value_ {
	[self setReadyToLoan:@(value_)];
}

- (BOOL)primitiveReadyToLoanValue {
	NSNumber *result = [self primitiveReadyToLoan];
	return [result boolValue];
}

- (void)setPrimitiveReadyToLoanValue:(BOOL)value_ {
	[self setPrimitiveReadyToLoan:@(value_)];
}

@dynamic readyToUse;

- (BOOL)readyToUseValue {
	NSNumber *result = [self readyToUse];
	return [result boolValue];
}

- (void)setReadyToUseValue:(BOOL)value_ {
	[self setReadyToUse:@(value_)];
}

- (BOOL)primitiveReadyToUseValue {
	NSNumber *result = [self primitiveReadyToUse];
	return [result boolValue];
}

- (void)setPrimitiveReadyToUseValue:(BOOL)value_ {
	[self setPrimitiveReadyToUse:@(value_)];
}

@dynamic responsible;

@dynamic responsibleFullName;

@dynamic reviewStatus;

- (int32_t)reviewStatusValue {
	NSNumber *result = [self reviewStatus];
	return [result intValue];
}

- (void)setReviewStatusValue:(int32_t)value_ {
	[self setReviewStatus:@(value_)];
}

- (int32_t)primitiveReviewStatusValue {
	NSNumber *result = [self primitiveReviewStatus];
	return [result intValue];
}

- (void)setPrimitiveReviewStatusValue:(int32_t)value_ {
	[self setPrimitiveReviewStatus:@(value_)];
}

@dynamic reviewTemplateId;

- (int32_t)reviewTemplateIdValue {
	NSNumber *result = [self reviewTemplateId];
	return [result intValue];
}

- (void)setReviewTemplateIdValue:(int32_t)value_ {
	[self setReviewTemplateId:@(value_)];
}

- (int32_t)primitiveReviewTemplateIdValue {
	NSNumber *result = [self primitiveReviewTemplateId];
	return [result intValue];
}

- (void)setPrimitiveReviewTemplateIdValue:(int32_t)value_ {
	[self setPrimitiveReviewTemplateId:@(value_)];
}

@dynamic reviewed;

- (BOOL)reviewedValue {
	NSNumber *result = [self reviewed];
	return [result boolValue];
}

- (void)setReviewedValue:(BOOL)value_ {
	[self setReviewed:@(value_)];
}

- (BOOL)primitiveReviewedValue {
	NSNumber *result = [self primitiveReviewed];
	return [result boolValue];
}

- (void)setPrimitiveReviewedValue:(BOOL)value_ {
	[self setPrimitiveReviewed:@(value_)];
}

@dynamic serialNumber;

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

@dynamic supplierName;

@end

@implementation EquipmentEntryAttributes 
+ (NSString *)archived {
	return @"archived";
}
+ (NSString *)authenticationType {
	return @"authenticationType";
}
+ (NSString *)borrowerFullName {
	return @"borrowerFullName";
}
+ (NSString *)canBeLendAcrossLocations {
	return @"canBeLendAcrossLocations";
}
+ (NSString *)category {
	return @"category";
}
+ (NSString *)categoryDescription {
	return @"categoryDescription";
}
+ (NSString *)comments {
	return @"comments";
}
+ (NSString *)createdOn {
	return @"createdOn";
}
+ (NSString *)equId {
	return @"equId";
}
+ (NSString *)frequency {
	return @"frequency";
}
+ (NSString *)isResponsible {
	return @"isResponsible";
}
+ (NSString *)lastEdit {
	return @"lastEdit";
}
+ (NSString *)lastReview {
	return @"lastReview";
}
+ (NSString *)loanComment {
	return @"loanComment";
}
+ (NSString *)loanDeadline {
	return @"loanDeadline";
}
+ (NSString *)loanLocation {
	return @"loanLocation";
}
+ (NSString *)loanLocationName {
	return @"loanLocationName";
}
+ (NSString *)loaner {
	return @"loaner";
}
+ (NSString *)localId {
	return @"localId";
}
+ (NSString *)location {
	return @"location";
}
+ (NSString *)mainID {
	return @"mainID";
}
+ (NSString *)manualId {
	return @"manualId";
}
+ (NSString *)manufacturer {
	return @"manufacturer";
}
+ (NSString *)monitoring {
	return @"monitoring";
}
+ (NSString *)name {
	return @"name";
}
+ (NSString *)nextReview {
	return @"nextReview";
}
+ (NSString *)objectStatus {
	return @"objectStatus";
}
+ (NSString *)owner {
	return @"owner";
}
+ (NSString *)photo {
	return @"photo";
}
+ (NSString *)photoId {
	return @"photoId";
}
+ (NSString *)purchaseDate {
	return @"purchaseDate";
}
+ (NSString *)quickReview {
	return @"quickReview";
}
+ (NSString *)readyToLoan {
	return @"readyToLoan";
}
+ (NSString *)readyToUse {
	return @"readyToUse";
}
+ (NSString *)responsible {
	return @"responsible";
}
+ (NSString *)responsibleFullName {
	return @"responsibleFullName";
}
+ (NSString *)reviewStatus {
	return @"reviewStatus";
}
+ (NSString *)reviewTemplateId {
	return @"reviewTemplateId";
}
+ (NSString *)reviewed {
	return @"reviewed";
}
+ (NSString *)serialNumber {
	return @"serialNumber";
}
+ (NSString *)shouldBeInspected {
	return @"shouldBeInspected";
}
+ (NSString *)supplier {
	return @"supplier";
}
+ (NSString *)supplierName {
	return @"supplierName";
}
@end

