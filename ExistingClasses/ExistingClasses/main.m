//
//  main.m
//  ExistingClasses
//
//  Created by jim Veneskey on 7/17/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    @autoreleasepool {

        NSString *message = @"Hello";
        NSString *shoutyMessage = [message uppercaseString];
        
        // did anything happen?
        NSLog(@"The NSString objects are %@ and %@", message, shoutyMessage);

        NSDate *today = [NSDate date];
        NSLog(@"The new NSDate object is: %@", today);
        
    }
    return 0;
}

