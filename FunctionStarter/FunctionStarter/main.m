//
//  main.m
//  FunctionStarter
//
//  Created by jim Veneskey on 7/15/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

// Old style method - 1999, using a function prototype to tell the compiler
// about a function that is not yet defined
void myFunction();

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        myFunction();
        
    }
    return 0;
}

// Here is where we define the function - AFTER we have called it
void myFunction () {
    // a simple loop
    for (int i = 1; i < 5000; i++) {
        if (i % 5 == 0) {
            continue; // skip multiples of 5
        }
        NSLog(@"The value of the index is %i", i);
    }
}


