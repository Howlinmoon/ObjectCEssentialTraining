//
//  main.m
//  NumericTypes
//
//  Created by jim Veneskey on 7/15/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // the word int is technically optional
        long long int myLongLongInteger  = 5000000000;
        long long myOtherLongLongInteger = 6000000000;  // still a long long int
        
        unsigned int myUnsignedInteger  = 99;
        unsigned myOtherUnsignedInteger = 99; // still an unsigned int
        
        // print them out
        
        NSLog(@"My long long integers are %lli and %lli", myLongLongInteger, myOtherLongLongInteger);
        
        NSLog(@"My unsigned integers are %u and %u", myUnsignedInteger, myOtherUnsignedInteger);
        
        // ints and truncation
        int nearlyFive = 4.999999;
        NSLog(@"The value of nearlyFive is: %i", nearlyFive);
        
        // and during calculations
        int myResult = 10 / 4;
        NSLog(@"The result of my division is: %i", myResult);
        
        
        // Defining a float
        float myFloat = 33.3f;
        NSLog(@"myFloat using percent f is: %f", myFloat);
        // Scientific notation
        NSLog(@"myFloat using percent e is: %e", myFloat);
        // best guess
        NSLog(@"myFloat using percent g is: %g", myFloat);
        
        
        // Defining a double
        double myDouble = 33.3;
        NSLog(@"myDouble using percent f is: %f", myDouble);
        // Scientific notation
        NSLog(@"myDouble using percent e is: %e", myDouble);
        // best guess
        NSLog(@"myDouble using percent g is: %g", myDouble);
        
        
    }
    return 0;
}

