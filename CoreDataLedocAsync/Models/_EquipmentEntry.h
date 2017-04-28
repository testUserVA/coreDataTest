// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to EquipmentEntry.h instead.

#if __has_feature(modules)
    @import Foundation;
    @import CoreData;
#else
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

NS_ASSUME_NONNULL_BEGIN

@interface EquipmentEntryID : NSManagedObjectID {}
@end

@interface _EquipmentEntry : NSManagedObject
+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_;
+ (NSString*)entityName;
+ (nullable NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) EquipmentEntryID *objectID;

@property (nonatomic, strong, nullable) NSNumber* archived;

@property (atomic) BOOL archivedValue;
- (BOOL)archivedValue;
- (void)setArchivedValue:(BOOL)value_;

@property (nonatomic, strong, nullable) NSNumber* authenticationType;

@property (atomic) int32_t authenticationTypeValue;
- (int32_t)authenticationTypeValue;
- (void)setAuthenticationTypeValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSString* borrowerFullName;

@property (nonatomic, strong, nullable) NSNumber* canBeLendAcrossLocations;

@property (atomic) BOOL canBeLendAcrossLocationsValue;
- (BOOL)canBeLendAcrossLocationsValue;
- (void)setCanBeLendAcrossLocationsValue:(BOOL)value_;

@property (nonatomic, strong, nullable) NSNumber* category;

@property (atomic) int32_t categoryValue;
- (int32_t)categoryValue;
- (void)setCategoryValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSString* categoryDescription;

@property (nonatomic, strong, nullable) NSString* comments;

@property (nonatomic, strong, nullable) NSDate* createdOn;

@property (nonatomic, strong, nullable) NSNumber* equId;

@property (atomic) int32_t equIdValue;
- (int32_t)equIdValue;
- (void)setEquIdValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSNumber* frequency;

@property (atomic) int32_t frequencyValue;
- (int32_t)frequencyValue;
- (void)setFrequencyValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSNumber* isResponsible;

@property (atomic) BOOL isResponsibleValue;
- (BOOL)isResponsibleValue;
- (void)setIsResponsibleValue:(BOOL)value_;

@property (nonatomic, strong, nullable) NSDate* lastEdit;

@property (nonatomic, strong, nullable) NSDate* lastReview;

@property (nonatomic, strong, nullable) NSString* loanComment;

@property (nonatomic, strong, nullable) NSDate* loanDeadline;

@property (nonatomic, strong, nullable) NSNumber* loanLocation;

@property (atomic) int32_t loanLocationValue;
- (int32_t)loanLocationValue;
- (void)setLoanLocationValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSString* loanLocationName;

@property (nonatomic, strong, nullable) NSNumber* loaner;

@property (atomic) int32_t loanerValue;
- (int32_t)loanerValue;
- (void)setLoanerValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSString* localId;

@property (nonatomic, strong, nullable) NSNumber* location;

@property (atomic) int32_t locationValue;
- (int32_t)locationValue;
- (void)setLocationValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSNumber* mainID;

@property (atomic) int32_t mainIDValue;
- (int32_t)mainIDValue;
- (void)setMainIDValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSString* manualId;

@property (nonatomic, strong, nullable) NSString* manufacturer;

@property (nonatomic, strong, nullable) NSNumber* monitoring;

@property (atomic) BOOL monitoringValue;
- (BOOL)monitoringValue;
- (void)setMonitoringValue:(BOOL)value_;

@property (nonatomic, strong, nullable) NSString* name;

@property (nonatomic, strong, nullable) NSDate* nextReview;

@property (nonatomic, strong, nullable) NSNumber* objectStatus;

@property (atomic) int32_t objectStatusValue;
- (int32_t)objectStatusValue;
- (void)setObjectStatusValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSNumber* owner;

@property (atomic) int32_t ownerValue;
- (int32_t)ownerValue;
- (void)setOwnerValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSData* photo;

@property (nonatomic, strong, nullable) NSNumber* photoId;

@property (atomic) int32_t photoIdValue;
- (int32_t)photoIdValue;
- (void)setPhotoIdValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSDate* purchaseDate;

@property (nonatomic, strong, nullable) NSNumber* quickReview;

@property (atomic) BOOL quickReviewValue;
- (BOOL)quickReviewValue;
- (void)setQuickReviewValue:(BOOL)value_;

@property (nonatomic, strong, nullable) NSNumber* readyToLoan;

@property (atomic) BOOL readyToLoanValue;
- (BOOL)readyToLoanValue;
- (void)setReadyToLoanValue:(BOOL)value_;

@property (nonatomic, strong, nullable) NSNumber* readyToUse;

@property (atomic) BOOL readyToUseValue;
- (BOOL)readyToUseValue;
- (void)setReadyToUseValue:(BOOL)value_;

@property (nonatomic, strong, nullable) NSString* responsible;

@property (nonatomic, strong, nullable) NSString* responsibleFullName;

@property (nonatomic, strong, nullable) NSNumber* reviewStatus;

@property (atomic) int32_t reviewStatusValue;
- (int32_t)reviewStatusValue;
- (void)setReviewStatusValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSNumber* reviewTemplateId;

@property (atomic) int32_t reviewTemplateIdValue;
- (int32_t)reviewTemplateIdValue;
- (void)setReviewTemplateIdValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSNumber* reviewed;

@property (atomic) BOOL reviewedValue;
- (BOOL)reviewedValue;
- (void)setReviewedValue:(BOOL)value_;

@property (nonatomic, strong, nullable) NSString* serialNumber;

@property (nonatomic, strong, nullable) NSNumber* shouldBeInspected;

@property (atomic) BOOL shouldBeInspectedValue;
- (BOOL)shouldBeInspectedValue;
- (void)setShouldBeInspectedValue:(BOOL)value_;

@property (nonatomic, strong, nullable) NSNumber* supplier;

@property (atomic) int32_t supplierValue;
- (int32_t)supplierValue;
- (void)setSupplierValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSString* supplierName;

@end

@interface _EquipmentEntry (CoreDataGeneratedPrimitiveAccessors)

- (nullable NSNumber*)primitiveArchived;
- (void)setPrimitiveArchived:(nullable NSNumber*)value;

- (BOOL)primitiveArchivedValue;
- (void)setPrimitiveArchivedValue:(BOOL)value_;

- (nullable NSNumber*)primitiveAuthenticationType;
- (void)setPrimitiveAuthenticationType:(nullable NSNumber*)value;

- (int32_t)primitiveAuthenticationTypeValue;
- (void)setPrimitiveAuthenticationTypeValue:(int32_t)value_;

- (nullable NSString*)primitiveBorrowerFullName;
- (void)setPrimitiveBorrowerFullName:(nullable NSString*)value;

- (nullable NSNumber*)primitiveCanBeLendAcrossLocations;
- (void)setPrimitiveCanBeLendAcrossLocations:(nullable NSNumber*)value;

- (BOOL)primitiveCanBeLendAcrossLocationsValue;
- (void)setPrimitiveCanBeLendAcrossLocationsValue:(BOOL)value_;

- (nullable NSNumber*)primitiveCategory;
- (void)setPrimitiveCategory:(nullable NSNumber*)value;

- (int32_t)primitiveCategoryValue;
- (void)setPrimitiveCategoryValue:(int32_t)value_;

- (nullable NSString*)primitiveCategoryDescription;
- (void)setPrimitiveCategoryDescription:(nullable NSString*)value;

- (nullable NSString*)primitiveComments;
- (void)setPrimitiveComments:(nullable NSString*)value;

- (nullable NSDate*)primitiveCreatedOn;
- (void)setPrimitiveCreatedOn:(nullable NSDate*)value;

- (nullable NSNumber*)primitiveEquId;
- (void)setPrimitiveEquId:(nullable NSNumber*)value;

- (int32_t)primitiveEquIdValue;
- (void)setPrimitiveEquIdValue:(int32_t)value_;

- (nullable NSNumber*)primitiveFrequency;
- (void)setPrimitiveFrequency:(nullable NSNumber*)value;

- (int32_t)primitiveFrequencyValue;
- (void)setPrimitiveFrequencyValue:(int32_t)value_;

- (nullable NSNumber*)primitiveIsResponsible;
- (void)setPrimitiveIsResponsible:(nullable NSNumber*)value;

- (BOOL)primitiveIsResponsibleValue;
- (void)setPrimitiveIsResponsibleValue:(BOOL)value_;

- (nullable NSDate*)primitiveLastEdit;
- (void)setPrimitiveLastEdit:(nullable NSDate*)value;

- (nullable NSDate*)primitiveLastReview;
- (void)setPrimitiveLastReview:(nullable NSDate*)value;

- (nullable NSString*)primitiveLoanComment;
- (void)setPrimitiveLoanComment:(nullable NSString*)value;

- (nullable NSDate*)primitiveLoanDeadline;
- (void)setPrimitiveLoanDeadline:(nullable NSDate*)value;

- (nullable NSNumber*)primitiveLoanLocation;
- (void)setPrimitiveLoanLocation:(nullable NSNumber*)value;

- (int32_t)primitiveLoanLocationValue;
- (void)setPrimitiveLoanLocationValue:(int32_t)value_;

- (nullable NSString*)primitiveLoanLocationName;
- (void)setPrimitiveLoanLocationName:(nullable NSString*)value;

- (nullable NSNumber*)primitiveLoaner;
- (void)setPrimitiveLoaner:(nullable NSNumber*)value;

- (int32_t)primitiveLoanerValue;
- (void)setPrimitiveLoanerValue:(int32_t)value_;

- (nullable NSString*)primitiveLocalId;
- (void)setPrimitiveLocalId:(nullable NSString*)value;

- (nullable NSNumber*)primitiveLocation;
- (void)setPrimitiveLocation:(nullable NSNumber*)value;

- (int32_t)primitiveLocationValue;
- (void)setPrimitiveLocationValue:(int32_t)value_;

- (nullable NSNumber*)primitiveMainID;
- (void)setPrimitiveMainID:(nullable NSNumber*)value;

- (int32_t)primitiveMainIDValue;
- (void)setPrimitiveMainIDValue:(int32_t)value_;

- (nullable NSString*)primitiveManualId;
- (void)setPrimitiveManualId:(nullable NSString*)value;

- (nullable NSString*)primitiveManufacturer;
- (void)setPrimitiveManufacturer:(nullable NSString*)value;

- (nullable NSNumber*)primitiveMonitoring;
- (void)setPrimitiveMonitoring:(nullable NSNumber*)value;

- (BOOL)primitiveMonitoringValue;
- (void)setPrimitiveMonitoringValue:(BOOL)value_;

- (nullable NSString*)primitiveName;
- (void)setPrimitiveName:(nullable NSString*)value;

- (nullable NSDate*)primitiveNextReview;
- (void)setPrimitiveNextReview:(nullable NSDate*)value;

- (nullable NSNumber*)primitiveObjectStatus;
- (void)setPrimitiveObjectStatus:(nullable NSNumber*)value;

- (int32_t)primitiveObjectStatusValue;
- (void)setPrimitiveObjectStatusValue:(int32_t)value_;

- (nullable NSNumber*)primitiveOwner;
- (void)setPrimitiveOwner:(nullable NSNumber*)value;

- (int32_t)primitiveOwnerValue;
- (void)setPrimitiveOwnerValue:(int32_t)value_;

- (nullable NSData*)primitivePhoto;
- (void)setPrimitivePhoto:(nullable NSData*)value;

- (nullable NSNumber*)primitivePhotoId;
- (void)setPrimitivePhotoId:(nullable NSNumber*)value;

- (int32_t)primitivePhotoIdValue;
- (void)setPrimitivePhotoIdValue:(int32_t)value_;

- (nullable NSDate*)primitivePurchaseDate;
- (void)setPrimitivePurchaseDate:(nullable NSDate*)value;

- (nullable NSNumber*)primitiveQuickReview;
- (void)setPrimitiveQuickReview:(nullable NSNumber*)value;

- (BOOL)primitiveQuickReviewValue;
- (void)setPrimitiveQuickReviewValue:(BOOL)value_;

- (nullable NSNumber*)primitiveReadyToLoan;
- (void)setPrimitiveReadyToLoan:(nullable NSNumber*)value;

- (BOOL)primitiveReadyToLoanValue;
- (void)setPrimitiveReadyToLoanValue:(BOOL)value_;

- (nullable NSNumber*)primitiveReadyToUse;
- (void)setPrimitiveReadyToUse:(nullable NSNumber*)value;

- (BOOL)primitiveReadyToUseValue;
- (void)setPrimitiveReadyToUseValue:(BOOL)value_;

- (nullable NSString*)primitiveResponsible;
- (void)setPrimitiveResponsible:(nullable NSString*)value;

- (nullable NSString*)primitiveResponsibleFullName;
- (void)setPrimitiveResponsibleFullName:(nullable NSString*)value;

- (nullable NSNumber*)primitiveReviewStatus;
- (void)setPrimitiveReviewStatus:(nullable NSNumber*)value;

- (int32_t)primitiveReviewStatusValue;
- (void)setPrimitiveReviewStatusValue:(int32_t)value_;

- (nullable NSNumber*)primitiveReviewTemplateId;
- (void)setPrimitiveReviewTemplateId:(nullable NSNumber*)value;

- (int32_t)primitiveReviewTemplateIdValue;
- (void)setPrimitiveReviewTemplateIdValue:(int32_t)value_;

- (nullable NSNumber*)primitiveReviewed;
- (void)setPrimitiveReviewed:(nullable NSNumber*)value;

- (BOOL)primitiveReviewedValue;
- (void)setPrimitiveReviewedValue:(BOOL)value_;

- (nullable NSString*)primitiveSerialNumber;
- (void)setPrimitiveSerialNumber:(nullable NSString*)value;

- (nullable NSNumber*)primitiveShouldBeInspected;
- (void)setPrimitiveShouldBeInspected:(nullable NSNumber*)value;

- (BOOL)primitiveShouldBeInspectedValue;
- (void)setPrimitiveShouldBeInspectedValue:(BOOL)value_;

- (nullable NSNumber*)primitiveSupplier;
- (void)setPrimitiveSupplier:(nullable NSNumber*)value;

- (int32_t)primitiveSupplierValue;
- (void)setPrimitiveSupplierValue:(int32_t)value_;

- (nullable NSString*)primitiveSupplierName;
- (void)setPrimitiveSupplierName:(nullable NSString*)value;

@end

@interface EquipmentEntryAttributes: NSObject 
+ (NSString *)archived;
+ (NSString *)authenticationType;
+ (NSString *)borrowerFullName;
+ (NSString *)canBeLendAcrossLocations;
+ (NSString *)category;
+ (NSString *)categoryDescription;
+ (NSString *)comments;
+ (NSString *)createdOn;
+ (NSString *)equId;
+ (NSString *)frequency;
+ (NSString *)isResponsible;
+ (NSString *)lastEdit;
+ (NSString *)lastReview;
+ (NSString *)loanComment;
+ (NSString *)loanDeadline;
+ (NSString *)loanLocation;
+ (NSString *)loanLocationName;
+ (NSString *)loaner;
+ (NSString *)localId;
+ (NSString *)location;
+ (NSString *)mainID;
+ (NSString *)manualId;
+ (NSString *)manufacturer;
+ (NSString *)monitoring;
+ (NSString *)name;
+ (NSString *)nextReview;
+ (NSString *)objectStatus;
+ (NSString *)owner;
+ (NSString *)photo;
+ (NSString *)photoId;
+ (NSString *)purchaseDate;
+ (NSString *)quickReview;
+ (NSString *)readyToLoan;
+ (NSString *)readyToUse;
+ (NSString *)responsible;
+ (NSString *)responsibleFullName;
+ (NSString *)reviewStatus;
+ (NSString *)reviewTemplateId;
+ (NSString *)reviewed;
+ (NSString *)serialNumber;
+ (NSString *)shouldBeInspected;
+ (NSString *)supplier;
+ (NSString *)supplierName;
@end

NS_ASSUME_NONNULL_END
