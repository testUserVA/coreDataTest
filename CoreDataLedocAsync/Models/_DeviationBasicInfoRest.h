// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DeviationBasicInfoRest.h instead.

#if __has_feature(modules)
    @import Foundation;
    @import CoreData;
#else
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

NS_ASSUME_NONNULL_BEGIN

@interface DeviationBasicInfoRestID : NSManagedObjectID {}
@end

@interface _DeviationBasicInfoRest : NSManagedObject
+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_;
+ (NSString*)entityName;
+ (nullable NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) DeviationBasicInfoRestID *objectID;

@property (nonatomic, strong, nullable) NSNumber* acceptingEmployeeId;

@property (atomic) int32_t acceptingEmployeeIdValue;
- (int32_t)acceptingEmployeeIdValue;
- (void)setAcceptingEmployeeIdValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSNumber* createdBy;

@property (atomic) int32_t createdByValue;
- (int32_t)createdByValue;
- (void)setCreatedByValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSDate* deadlineDate;

@property (nonatomic, strong, nullable) NSNumber* deviationCategory;

@property (atomic) int32_t deviationCategoryValue;
- (int32_t)deviationCategoryValue;
- (void)setDeviationCategoryValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSNumber* deviationID;

@property (atomic) int32_t deviationIDValue;
- (int32_t)deviationIDValue;
- (void)setDeviationIDValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSNumber* deviationStatus;

@property (atomic) int32_t deviationStatusValue;
- (int32_t)deviationStatusValue;
- (void)setDeviationStatusValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSNumber* deviationType;

@property (atomic) int32_t deviationTypeValue;
- (int32_t)deviationTypeValue;
- (void)setDeviationTypeValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSNumber* isArchived;

@property (atomic) BOOL isArchivedValue;
- (BOOL)isArchivedValue;
- (void)setIsArchivedValue:(BOOL)value_;

@property (nonatomic, strong, nullable) NSNumber* isMonitored;

@property (atomic) BOOL isMonitoredValue;
- (BOOL)isMonitoredValue;
- (void)setIsMonitoredValue:(BOOL)value_;

@property (nonatomic, strong, nullable) NSString* name;

@property (nonatomic, strong, nullable) NSData* previewImage;

@property (nonatomic, strong, nullable) NSDate* reportedDate;

@property (nonatomic, strong, nullable) NSNumber* responsibleEmployee;

@property (atomic) int32_t responsibleEmployeeValue;
- (int32_t)responsibleEmployeeValue;
- (void)setResponsibleEmployeeValue:(int32_t)value_;

@end

@interface _DeviationBasicInfoRest (CoreDataGeneratedPrimitiveAccessors)

- (nullable NSNumber*)primitiveAcceptingEmployeeId;
- (void)setPrimitiveAcceptingEmployeeId:(nullable NSNumber*)value;

- (int32_t)primitiveAcceptingEmployeeIdValue;
- (void)setPrimitiveAcceptingEmployeeIdValue:(int32_t)value_;

- (nullable NSNumber*)primitiveCreatedBy;
- (void)setPrimitiveCreatedBy:(nullable NSNumber*)value;

- (int32_t)primitiveCreatedByValue;
- (void)setPrimitiveCreatedByValue:(int32_t)value_;

- (nullable NSDate*)primitiveDeadlineDate;
- (void)setPrimitiveDeadlineDate:(nullable NSDate*)value;

- (nullable NSNumber*)primitiveDeviationCategory;
- (void)setPrimitiveDeviationCategory:(nullable NSNumber*)value;

- (int32_t)primitiveDeviationCategoryValue;
- (void)setPrimitiveDeviationCategoryValue:(int32_t)value_;

- (nullable NSNumber*)primitiveDeviationID;
- (void)setPrimitiveDeviationID:(nullable NSNumber*)value;

- (int32_t)primitiveDeviationIDValue;
- (void)setPrimitiveDeviationIDValue:(int32_t)value_;

- (nullable NSNumber*)primitiveDeviationStatus;
- (void)setPrimitiveDeviationStatus:(nullable NSNumber*)value;

- (int32_t)primitiveDeviationStatusValue;
- (void)setPrimitiveDeviationStatusValue:(int32_t)value_;

- (nullable NSNumber*)primitiveDeviationType;
- (void)setPrimitiveDeviationType:(nullable NSNumber*)value;

- (int32_t)primitiveDeviationTypeValue;
- (void)setPrimitiveDeviationTypeValue:(int32_t)value_;

- (nullable NSNumber*)primitiveIsArchived;
- (void)setPrimitiveIsArchived:(nullable NSNumber*)value;

- (BOOL)primitiveIsArchivedValue;
- (void)setPrimitiveIsArchivedValue:(BOOL)value_;

- (nullable NSNumber*)primitiveIsMonitored;
- (void)setPrimitiveIsMonitored:(nullable NSNumber*)value;

- (BOOL)primitiveIsMonitoredValue;
- (void)setPrimitiveIsMonitoredValue:(BOOL)value_;

- (nullable NSString*)primitiveName;
- (void)setPrimitiveName:(nullable NSString*)value;

- (nullable NSData*)primitivePreviewImage;
- (void)setPrimitivePreviewImage:(nullable NSData*)value;

- (nullable NSDate*)primitiveReportedDate;
- (void)setPrimitiveReportedDate:(nullable NSDate*)value;

- (nullable NSNumber*)primitiveResponsibleEmployee;
- (void)setPrimitiveResponsibleEmployee:(nullable NSNumber*)value;

- (int32_t)primitiveResponsibleEmployeeValue;
- (void)setPrimitiveResponsibleEmployeeValue:(int32_t)value_;

@end

@interface DeviationBasicInfoRestAttributes: NSObject 
+ (NSString *)acceptingEmployeeId;
+ (NSString *)createdBy;
+ (NSString *)deadlineDate;
+ (NSString *)deviationCategory;
+ (NSString *)deviationID;
+ (NSString *)deviationStatus;
+ (NSString *)deviationType;
+ (NSString *)isArchived;
+ (NSString *)isMonitored;
+ (NSString *)name;
+ (NSString *)previewImage;
+ (NSString *)reportedDate;
+ (NSString *)responsibleEmployee;
@end

NS_ASSUME_NONNULL_END
