//
//  Account.h
//  ClassExtensionDemo
//
//  Created by Jim Veneskey on 7/25/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Account : NSObject

@property NSString *accountName;
@property int accountNumber;
@property NSDecimalNumber *balance;

-(void) deposit: (NSDecimalNumber *) amount;
-(void) withdraw: (NSDecimalNumber *) amount;

@end
