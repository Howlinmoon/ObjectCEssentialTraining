//
//  main.m
//  SwitchExample
//
//  Created by jim Veneskey on 7/14/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // create a variable
        int stormCategory = 4;
        
        // some time later, we'll check it (using these if statements)
        
        if (stormCategory == 1) {
            NSLog(@"Time to get indoors.");
        }
        
        if (stormCategory == 2) {
            NSLog(@"Extensive damage - run and hide!");
        }
        
        if (stormCategory == 3) {
            NSLog(@"Devastating damage! Oh No!");
        }
        
        if (stormCategory == 4 || stormCategory == 5) {
            NSLog(@"Catastrophic damage!  Game Over Man, Game Over!");
        }
        
        if (stormCategory < 1 || stormCategory > 5) {
            NSLog(@"Readings are off the scale.  We haven't encountered this phenomenon before!");
        }
        
    }
    return 0;
}

