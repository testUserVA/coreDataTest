// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DocumentDetailsEntry.h instead.

#if __has_feature(modules)
    @import Foundation;
    @import CoreData;
#else
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

#import "DocumentBasicInfoEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface DocumentDetailsEntryID : DocumentBasicInfoEntryID {}
@end

@interface _DocumentDetailsEntry : DocumentBasicInfoEntry
+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_;
+ (NSString*)entityName;
+ (nullable NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) DocumentDetailsEntryID *objectID;

@property (nonatomic, strong, nullable) NSString* changeSummary;

@property (nonatomic, strong, nullable) NSDate* createdOn;

@property (nonatomic, strong, nullable) NSString* fileName;

@property (nonatomic, strong, nullable) NSDate* lastReview;

@property (nonatomic, strong, nullable) NSDate* nextReview;

@property (nonatomic, strong, nullable) NSNumber* reviewStatus;

@property (atomic) BOOL reviewStatusValue;
- (BOOL)reviewStatusValue;
- (void)setReviewStatusValue:(BOOL)value_;

@property (nonatomic, strong, nullable) NSNumber* scopeId;

@property (atomic) int32_t scopeIdValue;
- (int32_t)scopeIdValue;
- (void)setScopeIdValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSNumber* uploadedById;

@property (atomic) int32_t uploadedByIdValue;
- (int32_t)uploadedByIdValue;
- (void)setUploadedByIdValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSNumber* versionNumber;

@property (atomic) int32_t versionNumberValue;
- (int32_t)versionNumberValue;
- (void)setVersionNumberValue:(int32_t)value_;

@end

@interface _DocumentDetailsEntry (CoreDataGeneratedPrimitiveAccessors)

- (nullable NSString*)primitiveChangeSummary;
- (void)setPrimitiveChangeSummary:(nullable NSString*)value;

- (nullable NSDate*)primitiveCreatedOn;
- (void)setPrimitiveCreatedOn:(nullable NSDate*)value;

- (nullable NSString*)primitiveFileName;
- (void)setPrimitiveFileName:(nullable NSString*)value;

- (nullable NSDate*)primitiveLastReview;
- (void)setPrimitiveLastReview:(nullable NSDate*)value;

- (nullable NSDate*)primitiveNextReview;
- (void)setPrimitiveNextReview:(nullable NSDate*)value;

- (nullable NSNumber*)primitiveReviewStatus;
- (void)setPrimitiveReviewStatus:(nullable NSNumber*)value;

- (BOOL)primitiveReviewStatusValue;
- (void)setPrimitiveReviewStatusValue:(BOOL)value_;

- (nullable NSNumber*)primitiveScopeId;
- (void)setPrimitiveScopeId:(nullable NSNumber*)value;

- (int32_t)primitiveScopeIdValue;
- (void)setPrimitiveScopeIdValue:(int32_t)value_;

- (nullable NSNumber*)primitiveUploadedById;
- (void)setPrimitiveUploadedById:(nullable NSNumber*)value;

- (int32_t)primitiveUploadedByIdValue;
- (void)setPrimitiveUploadedByIdValue:(int32_t)value_;

- (nullable NSNumber*)primitiveVersionNumber;
- (void)setPrimitiveVersionNumber:(nullable NSNumber*)value;

- (int32_t)primitiveVersionNumberValue;
- (void)setPrimitiveVersionNumberValue:(int32_t)value_;

@end

@interface DocumentDetailsEntryAttributes: NSObject 
+ (NSString *)changeSummary;
+ (NSString *)createdOn;
+ (NSString *)fileName;
+ (NSString *)lastReview;
+ (NSString *)nextReview;
+ (NSString *)reviewStatus;
+ (NSString *)scopeId;
+ (NSString *)uploadedById;
+ (NSString *)versionNumber;
@end

NS_ASSUME_NONNULL_END
