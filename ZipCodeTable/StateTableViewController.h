//
//  StateTableViewController.h
//  ZipCodeTable
//
//  Created by Di Kong on 1/26/15.
//  Copyright (c) 2015 Software Merchant. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZipEditProtocol.h"


@class ZipCodeTableViewController;

@interface StateTableViewController : UITableViewController <ZipEditProtocol>

@property (strong, nonatomic) NSMutableDictionary *stateZip;
@property (strong, nonatomic) NSArray *stateList;

@end
