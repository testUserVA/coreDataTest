//
//  ViewController.m
//  CoreDataLedocAsync
//
//  Created by Michał Ćwiek on 24/04/17.
//  Copyright © 2017 valueadd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *equipmentsTableView;
@property (weak, nonatomic) IBOutlet UITableView *improvementsTableView;
@property (weak, nonatomic) IBOutlet UITableView *documentsTableView;
@property (weak, nonatomic) IBOutlet UITextField *loginTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@end

@implementation ViewController

- (IBAction)didTapLoginAndDownloadButton:(id)sender {
    [self.presenter loginAndDownload:self.loginTextField.text
                        withPassword:self.passwordTextField.text];
}

- (IBAction)didTapResetButton:(id)sender {
    [self.presenter reset];
}

- (void)setEquipmentData:(NSArray *)equipment {
    NSLog(@"Invoking setEquipmentData");
    [self.equipmentsTableView reloadData];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.loginTextField.text = @"anders.demant@eltelnetworks.com";
    self.passwordTextField.text = @"asdasd";
}

@end
