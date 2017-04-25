//
//  ListsPresenter.h
//  CoreDataLedocAsync
//
//  Created by Michał Ćwiek on 24/04/17.
//  Copyright © 2017 valueadd. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ListView <NSObject>
- (void)setEquipmentData:(NSArray *)equipment;
@end

@protocol ListsViewPresenter <NSObject>
- (instancetype)initWithListView:(id<ListView>)listView equipmentList:(NSArray *)equipmentList;
- (void)loginAndDownload;
- (void)reset;
@end

@interface ListsPresenter : NSObject<ListsViewPresenter>
@property (weak, nonatomic) id<ListView> view;
@property (strong, nonatomic) NSArray *equipments;
@end
