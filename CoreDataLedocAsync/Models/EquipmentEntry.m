#import "EquipmentEntry.h"
#import "DatabaseUtils.h"
#import "Utils.h"

@interface EquipmentEntry ()
@end

@implementation EquipmentEntry
@synthesize errorMessage;

+ (EquipmentEntry*)newInstance:(int)equId
{
    EquipmentEntry* equ = [DatabaseUtils loadEquipmenWithIdIfExist:equId];
    if(equ)
        return equ;

    equ = [EquipmentEntry insertInManagedObjectContext:[Utils getManagedObjCtx]];
    [equ setEquIdValue:equId];
    return equ;
}

/**
 * Init equipment from json dictionary obiect
 */
+ (EquipmentEntry*)initEquipment:(NSDictionary *)obj
{
    if([obj isEqual:[NSNull null]] || [[obj objectForKey:@"id"] isEqual:[NSNull null]])
        return nil;
    
    EquipmentEntry *equ = [EquipmentEntry newInstance:[[obj objectForKey:@"id"] intValue]];
    
    if(![[obj objectForKey:@"id"] isEqual:[NSNull null]])
        [equ setEquIdValue:[[obj objectForKey:@"id"] intValue]];
    else return nil;
    
    //if is error message return equipment without parsing
    if(![[obj objectForKey:@"errorMessage"] isEqual:[NSNull null]]) {
        [equ setErrorMessage:[obj objectForKey:@"errorMessage"]];
        return equ;
    }
    
    if(![[obj objectForKey:@"name"] isEqual:[NSNull null]])
        [equ setName:[obj objectForKey:@"name"]];
    else [equ setName:nil];
    
    if(![[obj objectForKey:@"description"] isEqual:[NSNull null]])
        [equ setComments:[obj objectForKey:@"description"]];
    else [equ setComments:nil];
    
    if(![[obj objectForKey:@"serialNumber"] isEqual:[NSNull null]])
        [equ setSerialNumber:[obj objectForKey:@"serialNumber"]];
    else [equ setSerialNumber:nil];
    
    if(![[obj objectForKey:@"purchaseDate"] isEqual:[NSNull null]])
        [equ setPurchaseDate:[[NSDate alloc] initWithTimeIntervalSince1970:[[obj objectForKey:@"purchaseDate"] longLongValue]/1000]];
    else
        [equ setPurchaseDate:nil];
    
    if(![[obj objectForKey:@"nextReview"] isEqual:[NSNull null]])
        [equ setNextReview:[[NSDate alloc] initWithTimeIntervalSince1970:[[obj objectForKey:@"nextReview"] longLongValue]/1000]];
    else
        [equ setNextReview:nil];
    
    if(![[obj objectForKey:@"manualId"] isEqual:[NSNull null]])
        [equ setManualId:[obj objectForKey:@"manualId"]];
    else [equ setManualId:[[NSNumber numberWithInt:equ.equIdValue] stringValue]];
    
    if(!equ.manualId || equ.manualId.length == 0) {
        [equ setManualId:equ.equId.stringValue];
    }
    
    if(![[obj objectForKey:@"reviewed"] isEqual:[NSNull null]])
        [equ setReviewedValue:[[obj objectForKey:@"reviewed"] boolValue]];
    else [equ setReviewedValue:NO];
    
    if(![[obj objectForKey:@"lastReview"] isEqual:[NSNull null]])
        [equ setLastReview:[[NSDate alloc] initWithTimeIntervalSince1970:[[obj objectForKey:@"lastReview"] longLongValue]/1000.0]];
    else
        [equ setLastReview:nil];
    
    if(![[obj objectForKey:@"createdOn"] isEqual:[NSNull null]])
        [equ setCreatedOn:[[NSDate alloc] initWithTimeIntervalSince1970:[[obj objectForKey:@"createdOn"] longLongValue]/1000.0]];
    else
        [equ setCreatedOn:nil];
    
    if(![[obj objectForKey:@"owner"] isEqual:[NSNull null]])
        [equ setOwnerValue:[[obj objectForKey:@"owner"] intValue]];
    
    if(![[obj objectForKey:@"category"] isEqual:[NSNull null]])
        [equ setCategoryValue:[[obj objectForKey:@"category"] intValue]];
    
    if(![[obj objectForKey:@"objectStatus"] isEqual:[NSNull null]])
        [equ setObjectStatusValue:[[obj objectForKey:@"objectStatus"] intValue]];
    else
        [equ setObjectStatusValue:0];
    
    if(![[obj objectForKey:@"frequency"] isEqual:[NSNull null]])
        [equ setFrequencyValue:[[obj objectForKey:@"frequency"] intValue]];
    
    if(![[obj objectForKey:@"supplier"] isEqual:[NSNull null]])
        [equ setSupplierValue:[[obj objectForKey:@"supplier"] intValue]];
    
    if(![[obj objectForKey:@"loaner"] isEqual:[NSNull null]])
        [equ setLoanerValue:[[obj objectForKey:@"loaner"] intValue]];
    else [equ setLoanerValue:-1];
    
    if(![[obj objectForKey:@"location"] isEqual:[NSNull null]])
        [equ setLocationValue:[[obj objectForKey:@"location"] intValue]];
    
    if(![[obj objectForKey:@"reviewStatus"] isEqual:[NSNull null]])
        [equ setReviewStatusValue:[[obj objectForKey:@"reviewStatus"] intValue]];
    
    if(![[obj objectForKey:@"shouldBeInspected"] isEqual:[NSNull null]])
        [equ setShouldBeInspectedValue:[[obj objectForKey:@"shouldBeInspected"] boolValue]];
    else [equ setShouldBeInspectedValue:NO];
    
    if(![[obj objectForKey:@"readyToUse"] isEqual:[NSNull null]])
        [equ setReadyToUseValue:[[obj objectForKey:@"readyToUse"] boolValue]];
    else [equ setReadyToUseValue:NO];
    
    if(![[obj objectForKey:@"quickReview"] isEqual:[NSNull null]])
        [equ setQuickReviewValue:[[obj objectForKey:@"quickReview"] boolValue]];
    else [equ setQuickReviewValue:NO];
    
    if(![[obj objectForKey:@"monitoring"] isEqual:[NSNull null]])
        [equ setMonitoringValue:[[obj objectForKey:@"monitoring"] boolValue]];
    
    if(![[obj objectForKey:@"archived"] isEqual:[NSNull null]])
        [equ setArchivedValue:[[obj objectForKey:@"archived"] boolValue]];
    else [equ setArchivedValue:NO];
    
    if(![[obj objectForKey:@"readyToLoan"] isEqual:[NSNull null]])
        [equ setReadyToLoanValue:[[obj objectForKey:@"readyToLoan"] boolValue]];
    else [equ setReadyToLoanValue:NO];
    
    if(![[obj objectForKey:@"lastEdit"] isEqual:[NSNull null]])
        [equ setLastEdit:[NSDate dateWithTimeIntervalSince1970:[[obj objectForKey:@"lastEdit"] longLongValue]/1000]];
    else
        [equ setLastEdit:nil];
    
    if([obj objectForKey:@"reviewTemplate"] && ![[obj objectForKey:@"reviewTemplate"] isEqual:[NSNull null]])
        [equ setReviewTemplateIdValue:[[obj objectForKey:@"reviewTemplate"] intValue]];
    else [equ setReviewTemplateId:nil];
    
    if([obj objectForKey:@"authenticationType"] && ![[obj objectForKey:@"authenticationType"] isEqual:[NSNull null]])
        [equ setAuthenticationTypeValue:[[obj objectForKey:@"authenticationType"] intValue]];
    else [equ setAuthenticationType:nil];
    
    if(![[obj objectForKey:@"isResponsible"] isEqual:[NSNull null]])
        [equ setIsResponsibleValue:[[obj objectForKey:@"isResponsible"] boolValue]];
    else [equ setIsResponsibleValue:NO];
    
    if([obj objectForKey:@"loanLocation"] && ![[obj objectForKey:@"loanLocation"] isEqual:[NSNull null]])
        [equ setLoanLocation:[obj objectForKey:@"loanLocation"]];
    else [equ setLoanLocation:nil];
    
    if(![[obj objectForKey:@"localId"] isEqual:[NSNull null]])
        [equ setLocalId:[obj objectForKey:@"localId"]];
    else [equ setLocalId:nil];
    
    if(![[obj objectForKey:@"manufacturer"] isEqual:[NSNull null]])
        [equ setManufacturer:[obj objectForKey:@"manufacturer"]];
    else [equ setManufacturer:nil];
    
    
    if(![[obj objectForKey:@"canBeLendAcrossLocations"] isEqual:[NSNull null]]) {
        [equ setCanBeLendAcrossLocationsValue:[[obj objectForKey:@"canBeLendAcrossLocations"] boolValue]];
    } else {
        [equ setCanBeLendAcrossLocationsValue:NO];
    }
    
    return equ;
}

@end