//
//  main.m
//  ClassExtensionDemo
//
//  Created by Jim Veneskey on 7/25/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>
# import "Account.h"

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        
        // Create a new account object
        Account *acc1 = [[Account alloc]init];
        // personalize it
        [acc1 setAccountName:@"Freda"];
        [acc1 setAccountNumber:12345];
        [acc1 deposit:[NSDecimalNumber decimalNumberWithString:@"200.00"]];
        [acc1 withdraw:[NSDecimalNumber decimalNumberWithString:@"75.22"]];
    }
    return 0;
}

