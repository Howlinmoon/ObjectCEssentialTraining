//
//  main.m
//  FunctionStarter
//
//  Created by jim Veneskey on 7/15/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
      // a simple loop
        for (int i = 1; i < 5000; i++) {
            if (i % 5 == 0) {
                continue; // skip multiples of 5
            }
            NSLog(@"The value of the index is %i", i);
        }
        
    }
    return 0;
}

