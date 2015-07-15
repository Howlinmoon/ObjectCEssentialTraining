//
//  main.m
//  FunctionStarter
//
//  Created by jim Veneskey on 7/15/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

// This function was created by the refactoring function of XCode
void myFunction(void) {
    // a simple loop
    for (int i = 1; i < 5000; i++) {
        if (i % 5 == 0) {
            continue; // skip multiples of 5
        }
        NSLog(@"The value of the index is %i", i);
    }
}

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        myFunction();
        
    }
    return 0;
}


