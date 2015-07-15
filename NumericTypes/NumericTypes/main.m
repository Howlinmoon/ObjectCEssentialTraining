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
        
    }
    return 0;
}

