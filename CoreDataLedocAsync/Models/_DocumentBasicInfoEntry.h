// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DocumentBasicInfoEntry.h instead.

#if __has_feature(modules)
    @import Foundation;
    @import CoreData;
#else
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

NS_ASSUME_NONNULL_BEGIN

@interface DocumentBasicInfoEntryID : NSManagedObjectID {}
@end

@interface _DocumentBasicInfoEntry : NSManagedObject
+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_;
+ (NSString*)entityName;
+ (nullable NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) DocumentBasicInfoEntryID *objectID;

@property (nonatomic, strong, nullable) NSString* additionalDetails;

@property (nonatomic, strong, nullable) NSNumber* categoryId;

@property (atomic) int32_t categoryIdValue;
- (int32_t)categoryIdValue;
- (void)setCategoryIdValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSNumber* documentId;

@property (atomic) int32_t documentIdValue;
- (int32_t)documentIdValue;
- (void)setDocumentIdValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSNumber* documentParentId;

@property (atomic) int32_t documentParentIdValue;
- (int32_t)documentParentIdValue;
- (void)setDocumentParentIdValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSNumber* documentStatusId;

@property (atomic) int32_t documentStatusIdValue;
- (int32_t)documentStatusIdValue;
- (void)setDocumentStatusIdValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSNumber* documentTypeId;

@property (atomic) int32_t documentTypeIdValue;
- (int32_t)documentTypeIdValue;
- (void)setDocumentTypeIdValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSNumber* frequencyId;

@property (atomic) int32_t frequencyIdValue;
- (int32_t)frequencyIdValue;
- (void)setFrequencyIdValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSNumber* isArchived;

@property (atomic) BOOL isArchivedValue;
- (BOOL)isArchivedValue;
- (void)setIsArchivedValue:(BOOL)value_;

@property (nonatomic, strong, nullable) NSNumber* isLinkToTheShop;

@property (atomic) BOOL isLinkToTheShopValue;
- (BOOL)isLinkToTheShopValue;
- (void)setIsLinkToTheShopValue:(BOOL)value_;

@property (nonatomic, strong, nullable) NSNumber* isMonitored;

@property (atomic) BOOL isMonitoredValue;
- (BOOL)isMonitoredValue;
- (void)setIsMonitoredValue:(BOOL)value_;

@property (nonatomic, strong, nullable) NSNumber* isPrivate;

@property (atomic) BOOL isPrivateValue;
- (BOOL)isPrivateValue;
- (void)setIsPrivateValue:(BOOL)value_;

@property (nonatomic, strong, nullable) NSString* link;

@property (nonatomic, strong, nullable) NSString* locationsNamesSeparatedByComa;

@property (nonatomic, strong, nullable) NSString* locationsStringList;

@property (nonatomic, strong, nullable) NSString* manualId;

@property (nonatomic, strong, nullable) NSString* name;

@property (nonatomic, strong, nullable) NSNumber* objectStatus;

@property (atomic) int32_t objectStatusValue;
- (int32_t)objectStatusValue;
- (void)setObjectStatusValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSNumber* ownerId;

@property (atomic) int32_t ownerIdValue;
- (int32_t)ownerIdValue;
- (void)setOwnerIdValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSString* physicalLocation;

@property (nonatomic, strong, nullable) NSString* searchableLocationsNamesSeparatedByComa;

@property (nonatomic, strong, nullable) NSNumber* shouldBeInspected;

@property (atomic) BOOL shouldBeInspectedValue;
- (BOOL)shouldBeInspectedValue;
- (void)setShouldBeInspectedValue:(BOOL)value_;

@property (nonatomic, strong, nullable) NSNumber* subcategoryId;

@property (atomic) int32_t subcategoryIdValue;
- (int32_t)subcategoryIdValue;
- (void)setSubcategoryIdValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSString* tradesStringList;

@end

@interface _DocumentBasicInfoEntry (CoreDataGeneratedPrimitiveAccessors)

- (nullable NSString*)primitiveAdditionalDetails;
- (void)setPrimitiveAdditionalDetails:(nullable NSString*)value;

- (nullable NSNumber*)primitiveCategoryId;
- (void)setPrimitiveCategoryId:(nullable NSNumber*)value;

- (int32_t)primitiveCategoryIdValue;
- (void)setPrimitiveCategoryIdValue:(int32_t)value_;

- (nullable NSNumber*)primitiveDocumentId;
- (void)setPrimitiveDocumentId:(nullable NSNumber*)value;

- (int32_t)primitiveDocumentIdValue;
- (void)setPrimitiveDocumentIdValue:(int32_t)value_;

- (nullable NSNumber*)primitiveDocumentParentId;
- (void)setPrimitiveDocumentParentId:(nullable NSNumber*)value;

- (int32_t)primitiveDocumentParentIdValue;
- (void)setPrimitiveDocumentParentIdValue:(int32_t)value_;

- (nullable NSNumber*)primitiveDocumentStatusId;
- (void)setPrimitiveDocumentStatusId:(nullable NSNumber*)value;

- (int32_t)primitiveDocumentStatusIdValue;
- (void)setPrimitiveDocumentStatusIdValue:(int32_t)value_;

- (nullable NSNumber*)primitiveDocumentTypeId;
- (void)setPrimitiveDocumentTypeId:(nullable NSNumber*)value;

- (int32_t)primitiveDocumentTypeIdValue;
- (void)setPrimitiveDocumentTypeIdValue:(int32_t)value_;

- (nullable NSNumber*)primitiveFrequencyId;
- (void)setPrimitiveFrequencyId:(nullable NSNumber*)value;

- (int32_t)primitiveFrequencyIdValue;
- (void)setPrimitiveFrequencyIdValue:(int32_t)value_;

- (nullable NSNumber*)primitiveIsArchived;
- (void)setPrimitiveIsArchived:(nullable NSNumber*)value;

- (BOOL)primitiveIsArchivedValue;
- (void)setPrimitiveIsArchivedValue:(BOOL)value_;

- (nullable NSNumber*)primitiveIsLinkToTheShop;
- (void)setPrimitiveIsLinkToTheShop:(nullable NSNumber*)value;

- (BOOL)primitiveIsLinkToTheShopValue;
- (void)setPrimitiveIsLinkToTheShopValue:(BOOL)value_;

- (nullable NSNumber*)primitiveIsMonitored;
- (void)setPrimitiveIsMonitored:(nullable NSNumber*)value;

- (BOOL)primitiveIsMonitoredValue;
- (void)setPrimitiveIsMonitoredValue:(BOOL)value_;

- (nullable NSNumber*)primitiveIsPrivate;
- (void)setPrimitiveIsPrivate:(nullable NSNumber*)value;

- (BOOL)primitiveIsPrivateValue;
- (void)setPrimitiveIsPrivateValue:(BOOL)value_;

- (nullable NSString*)primitiveLink;
- (void)setPrimitiveLink:(nullable NSString*)value;

- (nullable NSString*)primitiveLocationsNamesSeparatedByComa;
- (void)setPrimitiveLocationsNamesSeparatedByComa:(nullable NSString*)value;

- (nullable NSString*)primitiveLocationsStringList;
- (void)setPrimitiveLocationsStringList:(nullable NSString*)value;

- (nullable NSString*)primitiveManualId;
- (void)setPrimitiveManualId:(nullable NSString*)value;

- (nullable NSString*)primitiveName;
- (void)setPrimitiveName:(nullable NSString*)value;

- (nullable NSNumber*)primitiveObjectStatus;
- (void)setPrimitiveObjectStatus:(nullable NSNumber*)value;

- (int32_t)primitiveObjectStatusValue;
- (void)setPrimitiveObjectStatusValue:(int32_t)value_;

- (nullable NSNumber*)primitiveOwnerId;
- (void)setPrimitiveOwnerId:(nullable NSNumber*)value;

- (int32_t)primitiveOwnerIdValue;
- (void)setPrimitiveOwnerIdValue:(int32_t)value_;

- (nullable NSString*)primitivePhysicalLocation;
- (void)setPrimitivePhysicalLocation:(nullable NSString*)value;

- (nullable NSString*)primitiveSearchableLocationsNamesSeparatedByComa;
- (void)setPrimitiveSearchableLocationsNamesSeparatedByComa:(nullable NSString*)value;

- (nullable NSNumber*)primitiveShouldBeInspected;
- (void)setPrimitiveShouldBeInspected:(nullable NSNumber*)value;

- (BOOL)primitiveShouldBeInspectedValue;
- (void)setPrimitiveShouldBeInspectedValue:(BOOL)value_;

- (nullable NSNumber*)primitiveSubcategoryId;
- (void)setPrimitiveSubcategoryId:(nullable NSNumber*)value;

- (int32_t)primitiveSubcategoryIdValue;
- (void)setPrimitiveSubcategoryIdValue:(int32_t)value_;

- (nullable NSString*)primitiveTradesStringList;
- (void)setPrimitiveTradesStringList:(nullable NSString*)value;

@end

@interface DocumentBasicInfoEntryAttributes: NSObject 
+ (NSString *)additionalDetails;
+ (NSString *)categoryId;
+ (NSString *)documentId;
+ (NSString *)documentParentId;
+ (NSString *)documentStatusId;
+ (NSString *)documentTypeId;
+ (NSString *)frequencyId;
+ (NSString *)isArchived;
+ (NSString *)isLinkToTheShop;
+ (NSString *)isMonitored;
+ (NSString *)isPrivate;
+ (NSString *)link;
+ (NSString *)locationsNamesSeparatedByComa;
+ (NSString *)locationsStringList;
+ (NSString *)manualId;
+ (NSString *)name;
+ (NSString *)objectStatus;
+ (NSString *)ownerId;
+ (NSString *)physicalLocation;
+ (NSString *)searchableLocationsNamesSeparatedByComa;
+ (NSString *)shouldBeInspected;
+ (NSString *)subcategoryId;
+ (NSString *)tradesStringList;
@end

NS_ASSUME_NONNULL_END
