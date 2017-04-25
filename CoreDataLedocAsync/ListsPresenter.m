//
//  ListsPresenter.m
//  CoreDataLedocAsync
//
//  Created by Michał Ćwiek on 24/04/17.
//  Copyright © 2017 valueadd. All rights reserved.
//

#import "ListsPresenter.h"

@implementation ListsPresenter

- (instancetype)initWithListView:(id<ListView>)listView equipmentList:(NSArray *)equipmentList {
    NSLog(@"Invoking initWithListView");
    
    self = [super init];
    
    if(self) {
        self.view = listView;
        self.equipments = equipmentList;
    }
    
    return self;
}

- (void)loginAndDownload {
    NSLog(@"Start to login and list downloading");
    [self.view setEquipmentData:@[@"asdas"]];
}

- (void)reset {
    NSLog(@"Reseting and logout");
}

@end
