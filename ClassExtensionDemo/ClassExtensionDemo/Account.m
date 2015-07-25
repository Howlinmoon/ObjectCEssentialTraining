//
//  Account.m
//  ClassExtensionDemo
//
//  Created by Jim Veneskey on 7/25/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import "Account.h"

@implementation Account
-(id) init {
    self = [super init];
    if (self) {
        // initialize the balance
        _balance = [NSDecimalNumber decimalNumberWithString:@"0.00"];
    }
    return self;
}

-(void)deposit:(NSDecimalNumber *)amount {
    // TODO lots of complicated functionality
    NSLog(@"Logging this deposit on %@ of %@", [NSDate date], amount);
    
    // check amount
    if (amount.integerValue > 10000) {
        NSLog(@"Large deposit.  Placing hold on funds");
        // etc
    }
    
    self.balance = [self.balance decimalNumberByAdding:amount];
    NSLog(@"Balance is now %@", self.balance);
}

-(void)withdraw:(NSDecimalNumber *)amount {
    NSLog(@"Logging this withdrawl on %@", [NSDate date]);
    self.balance = [self.balance decimalNumberBySubtracting:amount];
    NSLog(@"Balance is now %@", self.balance);
    
}
@end
