//
//  main.m
//  PointerExample
//
//  Created by jim Veneskey on 7/17/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

// A simple function

void myFunction (NSString* x) {
    NSLog(@"The NS String you passed in was %@", x);
}

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        

        // Doesn't matter where the * goes
        NSString *firstWord = @"One";
        NSString * secondWord = @"Large";
        
        // Define thirdWord as a String Pointer
        NSString* thirdWord;
        // assign its value
        thirdWord = @"Pomegranate";
        
        // Call the function
        
        myFunction(firstWord);
        myFunction(secondWord);
        myFunction(thirdWord);
        
        
    }
    return 0;
}

