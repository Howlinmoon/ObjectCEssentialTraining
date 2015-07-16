//
//  main.m
//  ScopeExample
//
//  Created by jim Veneskey on 7/16/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    // example of a local scope variable that is local to main itself
    
    int numberOfProblems = 99;

    @autoreleasepool {
        

        for ( int i = 1; i < 1000; i++) {
            // lots of code
            // some variable creation
            int foo = 55;
            foo ++;
            // more important code stuff
            
            // the following is a bad practice
            int numberOfProblems = 0;
            numberOfProblems++;
            NSLog(@"The value of numberOfProblems is: %i", numberOfProblems);
            
        }

        NSLog(@"(outside)The value of numberOfProblems is: %i", numberOfProblems);

        // what's the value of foo? (not accessible outside of the for loop)
        // NSLog(@"foo is now %i", foo);
        
        
        
        
    }
    return 0;
}

