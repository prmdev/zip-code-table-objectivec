//
//  ZipCodeTableViewController.h
//  ZipCodeTable
//
//  Created by Di Kong on 1/26/15.
//  Copyright (c) 2015 Software Merchant. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZipEditProtocol.h"


@class ZipEditViewController;

@interface ZipCodeTableViewController : UITableViewController <ZipEditProtocol>

@property (weak, nonatomic) id <ZipEditProtocol> zipEditDelegate;
@property (strong, nonatomic) NSMutableArray *zipList;
@property (strong, nonatomic) NSString *state;

@end
