//
//  EditZipViewController.h
//  ZipCodeTable
//
//  Created by Di Kong on 1/26/15.
//  Copyright (c) 2015 Software Merchant. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZipEditProtocol.h"


@interface ZipEditViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *editingLabel;
@property (strong, nonatomic) IBOutlet UILabel *stateLabel;
@property (strong, nonatomic) IBOutlet UITextField *zipEditField;

@property (weak, nonatomic) id <ZipEditProtocol> zipEditDelegate;
@property (strong, nonatomic) NSString *state;
@property (strong, nonatomic) NSString *zipCode;
@property (nonatomic) NSInteger editIndex;

- (IBAction)updateButtonPressed:(id)sender;

@end
