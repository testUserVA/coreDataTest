#import "DeviationDetailsRest.h"
#import "DatabaseUtils.h"
#import "Utils.h"

@interface DeviationDetailsRest ()

// Private interface goes here.

@end

@implementation DeviationDetailsRest

// Custom logic goes here.

+ (DeviationDetailsRest *)newInstance:(int)devId
{
    DeviationDetailsRest *deviation = [DatabaseUtils loadImprovementWithIdIfExist:devId];
    
    if (deviation)
        return deviation;
    
    deviation = [DeviationDetailsRest insertInManagedObjectContext:[Utils getManagedObjCtx]];
    [deviation setDeviationIDValue:devId];
    return deviation;
}

- (NSString *)description
{
    if(!self.name)
        return @"";
    
    return self.name;
}

+ (DeviationDetailsRest*)initDetailDeviation:(NSDictionary *)dictionary
{
    DeviationDetailsRest *dev = [DeviationDetailsRest newInstance:(int)[[dictionary objectForKey:@"id"] integerValue]];
    
    if([dictionary isEqual:[NSNull null]])
        return nil;
    
    // Basic deviation properties:
    if([dictionary objectForKey:@"id"] && ![[dictionary objectForKey:@"id"] isEqual:[NSNull null]])
        dev.deviationID = [dictionary objectForKey:@"id"];
    
    if([dictionary objectForKey:@"name"] && ![[dictionary objectForKey:@"name"] isEqual:[NSNull null]])
        dev.name = [dictionary objectForKey:@"name"];
    
    if([dictionary objectForKey:@"deadlineDate"] && ![[dictionary objectForKey:@"deadlineDate"] isEqual:[NSNull null]])
        dev.deadlineDate = [[NSDate alloc] initWithTimeIntervalSince1970:[[dictionary objectForKey:@"deadlineDate"] longLongValue]/1000.0];
    
    if([dictionary objectForKey:@"reportedDate"] && ![[dictionary objectForKey:@"reportedDate"] isEqual:[NSNull null]])
        dev.reportedDate = [[NSDate alloc] initWithTimeIntervalSince1970:[[dictionary objectForKey:@"reportedDate"] longLongValue]/1000.0];
    
    if([dictionary objectForKey:@"responsibleEmployee"] && ![[dictionary objectForKey:@"responsibleEmployee"] isEqual:[NSNull null]])
        dev.responsibleEmployee = [dictionary objectForKey:@"responsibleEmployee"];
    
    if([dictionary objectForKey:@"createdBy"] && ![[dictionary objectForKey:@"createdBy"] isEqual:[NSNull null]])
        dev.createdBy = [dictionary objectForKey:@"createdBy"];
    
    if([dictionary objectForKey:@"deviationStatus"] && ![[dictionary objectForKey:@"deviationStatus"] isEqual:[NSNull null]])
        dev.deviationStatus = [dictionary objectForKey:@"deviationStatus"];
    
    if([dictionary objectForKey:@"deviationType"] && ![[dictionary objectForKey:@"deviationType"] isEqual:[NSNull null]]){
        dev.deviationType = [dictionary objectForKey:@"deviationType"];
    }
    
    if([dictionary objectForKey:@"deviationCategory"] && ![[dictionary objectForKey:@"deviationCategory"] isEqual:[NSNull null]]){
        dev.deviationCategory = [dictionary objectForKey:@"deviationCategory"];
    }
    
    if([dictionary objectForKey:@"isArchived"] && ![[dictionary objectForKey:@"isArchived"] isEqual:[NSNull null]]){
        dev.isArchived = [dictionary objectForKey:@"isArchived"];
    }
    
    if([dictionary objectForKey:@"isMonitored"] && ![[dictionary objectForKey:@"isMonitored"] isEqual:[NSNull null]]){
        dev.isMonitored = [dictionary objectForKey:@"isMonitored"];
    }
    
    // in database it is in deviationDetailsRest, but we have always used DeviationDetailsRest, so it no make no harm
    if([dictionary objectForKey:@"previewImageId"] && ![[dictionary objectForKey:@"previewImageId"] isEqual:[NSNull null]]){
        dev.photoId = [dictionary objectForKey:@"previewImageId"];
    } /// else dev.photoId = nil; this might couse problems with CoreData
    
    // DeviationDetailsRest properties:
    if([dictionary objectForKey:@"spentMoney"] && ![[dictionary objectForKey:@"spentMoney"] isEqual:[NSNull null]])
        dev.spentMoneyValue = (int)[[dictionary objectForKey:@"spentMoney"] integerValue];
    
    if([dictionary objectForKey:@"spentTime"] && ![[dictionary objectForKey:@"spentTime"] isEqual:[NSNull null]])
        dev.spentTime = [dictionary objectForKey:@"spentTime"];
    
    if([dictionary objectForKey:@"cause"] && ![[dictionary objectForKey:@"cause"] isEqual:[NSNull null]])
        dev.cause = [dictionary objectForKey:@"cause"];
    
    if([dictionary objectForKey:@"howToPrevent"] && ![[dictionary objectForKey:@"howToPrevent"] isEqual:[NSNull null]])
        dev.howToPrevent = [dictionary objectForKey:@"howToPrevent"];
    
    if([dictionary objectForKey:@"recommendedSolution"] && ![[dictionary objectForKey:@"recommendedSolution"] isEqual:[NSNull null]])
        dev.recommendedSolution = [dictionary objectForKey:@"recommendedSolution"];
    
    if([dictionary objectForKey:@"whatHappened"] && ![[dictionary objectForKey:@"whatHappened"] isEqual:[NSNull null]])
        dev.whatHappened = [dictionary objectForKey:@"whatHappened"];
    
    if([dictionary objectForKey:@"supplierId"] && ![[dictionary objectForKey:@"supplierId"] isEqual:[NSNull null]]){
        dev.supplier = [dictionary objectForKey:@"supplierId"];
    }
    
    if([dictionary objectForKey:@"reference"] && ![[dictionary objectForKey:@"reference"] isEqual:[NSNull null]]){
        dev.reference = [dictionary objectForKey:@"reference"];
    }
    
    if([dictionary objectForKey:@"acceptingPersonId"] && ![[dictionary objectForKey:@"acceptingPersonId"] isEqual:[NSNull null]]){
        dev.acceptingEmployeeId = [dictionary objectForKey:@"acceptingPersonId"];
    } else {
        dev.acceptingEmployeeId = nil;
    }
    
    if([dictionary objectForKey:@"locationRestId"] && ![[dictionary objectForKey:@"locationRestId"] isEqual:[NSNull null]]){
        NSMutableArray *locationList = dictionary[@"locationRestId"];
        
        NSString * locationsString = @"";
        NSInteger i;
        for(i = 0; i < locationList.count; ++i){
            locationsString = [locationsString stringByAppendingString:[locationList[i] stringValue]];
            if(i != locationList.count - 1) locationsString = [locationsString stringByAppendingString:@","];
        }
        
        if(i > 0) dev.locationRestIdList = locationsString;
        else dev.locationRestIdList = nil;
    }
   
    return dev;
}

@end