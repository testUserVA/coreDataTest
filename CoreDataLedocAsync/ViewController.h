//
//  ViewController.h
//  CoreDataLedocAsync
//
//  Created by Michał Ćwiek on 24/04/17.
//  Copyright © 2017 valueadd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListsPresenter.h"

@interface ViewController : UIViewController <ListView>
@property (strong, nonatomic) id<ListsViewPresenter> presenter;
@end

