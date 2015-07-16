//
//  main.m
//  BoolsAndChars
//
//  Created by jim Veneskey on 7/16/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        char firstLetter = 'h';  // use single quotes for chars
        char anotherLetter = '!';
        char someDigit = '6';
        
        // print them out
        NSLog(@"My chars are %c, %c and %c", firstLetter, anotherLetter, someDigit);
        
        // You can do BOOL in this non-recommended fashion
        bool recommended = false;
        
        // But you really should do it like this:
        
        BOOL isThisTheRightWay = YES;
        
        NSLog(@"Old non-recommended style: %i, new ObjectiveC style: %i", recommended, isThisTheRightWay);
        

        
    }
    return 0;
}

