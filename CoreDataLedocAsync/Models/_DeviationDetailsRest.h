// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DeviationDetailsRest.h instead.

#if __has_feature(modules)
    @import Foundation;
    @import CoreData;
#else
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

#import "DeviationBasicInfoRest.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeviationDetailsRestID : DeviationBasicInfoRestID {}
@end

@interface _DeviationDetailsRest : DeviationBasicInfoRest
+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_;
+ (NSString*)entityName;
+ (nullable NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) DeviationDetailsRestID *objectID;

@property (nonatomic, strong, nullable) NSString* cause;

@property (nonatomic, strong, nullable) NSString* howToPrevent;

@property (nonatomic, strong, nullable) NSString* locationRestIdList;

@property (nonatomic, strong, nullable) NSData* photo;

@property (nonatomic, strong, nullable) NSNumber* photoId;

@property (atomic) int32_t photoIdValue;
- (int32_t)photoIdValue;
- (void)setPhotoIdValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSString* recommendedSolution;

@property (nonatomic, strong, nullable) NSString* reference;

@property (nonatomic, strong, nullable) NSString* searchableLocationRestIdList;

@property (nonatomic, strong, nullable) NSNumber* spentMoney;

@property (atomic) int32_t spentMoneyValue;
- (int32_t)spentMoneyValue;
- (void)setSpentMoneyValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSString* spentTime;

@property (nonatomic, strong, nullable) NSNumber* supplier;

@property (atomic) int32_t supplierValue;
- (int32_t)supplierValue;
- (void)setSupplierValue:(int32_t)value_;

@property (nonatomic, strong, nullable) NSString* whatHappened;

@end

@interface _DeviationDetailsRest (CoreDataGeneratedPrimitiveAccessors)

- (nullable NSString*)primitiveCause;
- (void)setPrimitiveCause:(nullable NSString*)value;

- (nullable NSString*)primitiveHowToPrevent;
- (void)setPrimitiveHowToPrevent:(nullable NSString*)value;

- (nullable NSString*)primitiveLocationRestIdList;
- (void)setPrimitiveLocationRestIdList:(nullable NSString*)value;

- (nullable NSData*)primitivePhoto;
- (void)setPrimitivePhoto:(nullable NSData*)value;

- (nullable NSNumber*)primitivePhotoId;
- (void)setPrimitivePhotoId:(nullable NSNumber*)value;

- (int32_t)primitivePhotoIdValue;
- (void)setPrimitivePhotoIdValue:(int32_t)value_;

- (nullable NSString*)primitiveRecommendedSolution;
- (void)setPrimitiveRecommendedSolution:(nullable NSString*)value;

- (nullable NSString*)primitiveReference;
- (void)setPrimitiveReference:(nullable NSString*)value;

- (nullable NSString*)primitiveSearchableLocationRestIdList;
- (void)setPrimitiveSearchableLocationRestIdList:(nullable NSString*)value;

- (nullable NSNumber*)primitiveSpentMoney;
- (void)setPrimitiveSpentMoney:(nullable NSNumber*)value;

- (int32_t)primitiveSpentMoneyValue;
- (void)setPrimitiveSpentMoneyValue:(int32_t)value_;

- (nullable NSString*)primitiveSpentTime;
- (void)setPrimitiveSpentTime:(nullable NSString*)value;

- (nullable NSNumber*)primitiveSupplier;
- (void)setPrimitiveSupplier:(nullable NSNumber*)value;

- (int32_t)primitiveSupplierValue;
- (void)setPrimitiveSupplierValue:(int32_t)value_;

- (nullable NSString*)primitiveWhatHappened;
- (void)setPrimitiveWhatHappened:(nullable NSString*)value;

@end

@interface DeviationDetailsRestAttributes: NSObject 
+ (NSString *)cause;
+ (NSString *)howToPrevent;
+ (NSString *)locationRestIdList;
+ (NSString *)photo;
+ (NSString *)photoId;
+ (NSString *)recommendedSolution;
+ (NSString *)reference;
+ (NSString *)searchableLocationRestIdList;
+ (NSString *)spentMoney;
+ (NSString *)spentTime;
+ (NSString *)supplier;
+ (NSString *)whatHappened;
@end

NS_ASSUME_NONNULL_END
