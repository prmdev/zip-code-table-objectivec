//
//  ZipEditProtocol.h
//  ZipCodeTable
//
//  Created by prmdev on 1/26/15.
//  Copyright (c) 2015 Software Merchant. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol ZipEditProtocol <NSObject>

- (void)zipEditInState:(NSString *)state atIndex:(NSInteger)index withZipCode:(NSString *)newZipCode;

@end


