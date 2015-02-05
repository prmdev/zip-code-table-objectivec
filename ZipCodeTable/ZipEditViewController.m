//
//  EditZipViewController.m
//  ZipCodeTable
//
//  Created by Di Kong on 1/26/15.
//  Copyright (c) 2015 Software Merchant. All rights reserved.
//

#import "ZipEditViewController.h"


@interface ZipEditViewController ()

@end


@implementation ZipEditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    self.editingLabel.text = [NSString stringWithFormat:@"Editing %@", self.zipCode];
    self.stateLabel.text = self.state;
    self.zipEditField.text = self.zipCode;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateButtonPressed:(id)sender {
    if (![self.zipEditField.text isEqualToString:self.zipCode]) {
        self.zipCode = self.zipEditField.text;
        [self.zipEditDelegate zipEditInState:self.state
                                     atIndex:self.editIndex
                                 withZipCode:self.zipCode];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
