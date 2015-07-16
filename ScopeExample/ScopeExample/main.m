//
//  main.m
//  ScopeExample
//
//  Created by jim Veneskey on 7/16/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        

        for ( int i = 1; i < 1000; i++) {
            // lots of code
            // some variable creation
            int foo = 55;
            foo ++;
            // more important code stuff
        }
        
        // what's the value of foo?
        NSLog(@"foo is now %i", foo);
        
        
        
    }
    return 0;
}

