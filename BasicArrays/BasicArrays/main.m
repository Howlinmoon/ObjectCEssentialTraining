//
//  main.m
//  BasicArrays
//
//  Created by jim Veneskey on 7/20/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // define an array of 5 integers
        int multipleValues[5];
        
        // initialize them (hard way)
        multipleValues[0] = 10;
        multipleValues[1] = 100;
        multipleValues[2] = 1000;
        multipleValues[3] = 10000;
        multipleValues[4] = 100000;
        
        // declare and initialize all at once:
        int moreValues[5] = {10, 100, 1000, 10000, 100000 };
        
        NSLog(@"The value of the 3rd element in first array is: %i", multipleValues[2]);

        NSLog(@"The value of the 3rd element in second array is: %i", moreValues[2]);

        // can use the same format for objects
        NSString *myStringArray[5] = {@"First", @"Second", @"Third", @"Fourth", @"Fifth" };
        NSLog(@"The value of the 3rd element in the strings array is: %@", myStringArray[2]);
        
        // old style arrays do not have bounds checking...
        int badSpot = 99;
        NSLog(@"We will now attempt to access outside of the defined first array bounds: %i", multipleValues[badSpot]);
        
    }
    return 0;
}

