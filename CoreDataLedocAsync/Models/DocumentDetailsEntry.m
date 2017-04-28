#import "DocumentDetailsEntry.h"
#import "DatabaseUtils.h"
#import "Utils.h"

@interface DocumentDetailsEntry ()
// Private interface goes here.

@end

@implementation DocumentDetailsEntry

+ (DocumentDetailsEntry *)newInstance:(int)docId
{
    DocumentDetailsEntry *document = [DatabaseUtils loadDocumentWithIdIfExist:docId];
    
    if(document) {
        return document;
    }
    
    document = [DocumentDetailsEntry insertInManagedObjectContext:[Utils getManagedObjCtx]];
    [document setDocumentIdValue:docId];
    [document setDocumentParentIdValue:docId];
    
    return document;
}

///init details document from json obj object
+ (DocumentDetailsEntry *)initDetailDocument:(NSDictionary *)obj
{
    if(!obj || [obj isEqual:[NSNull null]] || [obj[@"id"] isEqual:[NSNull null]]) {
       return nil;
    }
    
    DocumentDetailsEntry *doc = [DocumentDetailsEntry newInstance:[obj[@"id"] intValue]];
    
    if([obj isEqual:[NSNull null]])
        return nil;
    
    // Basic document properties:
    if(obj[@"originalDocumentId"] && ![obj[@"originalDocumentId"] isEqual:[NSNull null]])
        doc.documentParentId = obj[@"originalDocumentId"];
    
    if(obj[@"id"] && ![obj[@"id"] isEqual:[NSNull null]])
        doc.documentId = obj[@"id"];
    
    if(obj[@"name"] && ![obj[@"name"] isEqual:[NSNull null]])
        doc.name = obj[@"name"];
    
    if(obj[@"ownerId"] && ![obj[@"ownerId"] isEqual:[NSNull null]])
        doc.ownerId = obj[@"ownerId"];
    
    if(obj[@"categoryId"] && ![obj[@"categoryId"] isEqual:[NSNull null]])
        doc.categoryId = obj[@"categoryId"];
    
    if(obj[@"subcategoryId"] && ![obj[@"subcategoryId"] isEqual:[NSNull null]])
        doc.subcategoryId = obj[@"subcategoryId"];
    
    if(obj[@"documentStatusId"] && ![obj[@"documentStatusId"] isEqual:[NSNull null]])
        doc.documentStatusId = obj[@"documentStatusId"];
    
    if(obj[@"documentTypeId"] && ![obj[@"documentTypeId"] isEqual:[NSNull null]])
        doc.documentTypeId = obj[@"documentTypeId"];
    
    if(obj[@"isArchived"] && ![obj[@"isArchived"] isEqual:[NSNull null]])
        doc.isArchived = obj[@"isArchived"];
    
    if(obj[@"isMonitored"] && ![obj[@"isMonitored"] isEqual:[NSNull null]])
        doc.isMonitored = obj[@"isMonitored"];
    
    if(obj[@"isPrivate"] && ![obj[@"isPrivate"] isEqual:[NSNull null]])
        doc.isPrivate = obj[@"isPrivate"];
    
    if(obj[@"frequencyId"] && ![obj[@"frequencyId"] isEqual:[NSNull null]])
        doc.frequencyId = obj[@"frequencyId"];
    
    if(obj[@"additionalDetails"] && ![obj[@"additionalDetails"] isEqual:[NSNull null]])
        doc.additionalDetails = obj[@"additionalDetails"];
    
    if(obj[@"locations"] && ![obj[@"locations"] isEqual:[NSNull null]])
        doc.locationsStringList = @"sdfsdfsfsdfsdfsdf";
    
    if(obj[@"tradesId"] && ![obj[@"tradesId"] isEqual:[NSNull null]])
        doc.tradesStringList = @"sdfssfsfsfsfs";
    
    if(obj[@"link"] && ![obj[@"link"] isEqual:[NSNull null]] && [obj[@"link"] length] > 0)
        doc.link = obj[@"link"];
    
    if(obj[@"physicalLocation"] && ![obj[@"physicalLocation"] isEqual:[NSNull null]] && [obj[@"physicalLocation"] length] > 0)
        doc.physicalLocation = obj[@"physicalLocation"];
    
    if(obj[@"isToBuy"] && ![obj[@"isToBuy"] isEqual:[NSNull null]])
        doc.isLinkToTheShop = obj[@"isToBuy"];
    else
        doc.isLinkToTheShop = [NSNumber numberWithBool:NO];
    
    if(obj[@"shouldBeInspected"] && ![obj[@"shouldBeInspected"] isEqual:[NSNull null]])
        doc.shouldBeInspected = obj[@"shouldBeInspected"];
    
    // fields from DocumentDetailsRest
    if(obj[@"createdOn"] && ![obj[@"createdOn"] isEqual:[NSNull null]])
        doc.createdOn = [[NSDate alloc] initWithTimeIntervalSince1970:[obj[@"createdOn"] longLongValue]/1000.0];
    
    if(obj[@"lastReview"] && ![obj[@"lastReview"] isEqual:[NSNull null]])
        doc.lastReview = [[NSDate alloc] initWithTimeIntervalSince1970:[obj[@"lastReview"] longLongValue]/1000.0];
    
    if(obj[@"nextReview"] && ![obj[@"nextReview"] isEqual:[NSNull null]])
        doc.nextReview = [[NSDate alloc] initWithTimeIntervalSince1970:[obj[@"nextReview"] longLongValue]/1000.0];
    else {
        doc.nextReview = nil;
    }
    
    if(obj[@"scopeId"] && ![obj[@"scopeId"] isEqual:[NSNull null]])
        doc.scopeId = obj[@"scopeId"];
    
    if(obj[@"reviewStatus"] && ![obj[@"reviewStatus"] isEqual:[NSNull null]])
        doc.reviewStatus = obj[@"reviewStatus"];
    
    if(obj[@"uploadedById"] && ![obj[@"uploadedById"] isEqual:[NSNull null]])
        doc.uploadedById = obj[@"uploadedById"];
    
    if(obj[@"attachmentDescription"] && ![obj[@"attachmentDescription"] isEqual:[NSNull null]] && [obj[@"attachmentDescription"] length] > 0)
        doc.changeSummary = obj[@"attachmentDescription"];
    
    if(obj[@"objectStatus"] && ![obj[@"objectStatus"] isEqual:[NSNull null]]) {
        doc.objectStatus = obj[@"objectStatus"];
    } else {
        doc.objectStatus = nil;
    }
    
    if(obj[@"manualId"] && ![obj[@"manualId"] isEqual:[NSNull null]]) {
        doc.manualId = obj[@"manualId"];
    } else {
        doc.manualId = @"";
    }
    
   

    return doc;
}

@end
