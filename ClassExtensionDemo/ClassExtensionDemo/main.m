//
//  main.m
//  ClassExtensionDemo
//
//  Created by Jim Veneskey on 7/25/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"
//# import "Account_PrivateProperties.h"

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        
        // Create a new account object
        Account *acc1 = [[Account alloc]init];
        // personalize it
        [acc1 setAccountName:@"Freda"];
        [acc1 setAccountNumber:12345];
        [acc1 deposit:[NSDecimalNumber decimalNumberWithString:@"200.00"]];
        [acc1 withdraw:[NSDecimalNumber decimalNumberWithString:@"75.22"]];
        
        // sneaky hacker code - adding money to our account
        // This is mitigated by adding the class extension and
        // moving the balance property into it.
        // acc1.balance = [NSDecimalNumber decimalNumberWithString:@"5999999.00"];
        
        // now we have readonly access to the balance property
        NSLog(@"The balance, checked from main, is now: %@", acc1.balance.stringValue);
        
    }
    return 0;
}

