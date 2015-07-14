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
        
        
        switch (stormCategory) {
            case 1:
                NSLog(@"Time to get indoors.");
                break;
                
            case 2:
                NSLog(@"Extensive damage - run and hide!");
                break;
                
            case 3:
                NSLog(@"Devastating damage! Oh No!");
                break;
                
            case 4:
                // case 4 falls into case 5 since there is no "break"
            case 5:
                NSLog(@"Catastrophic damage!  Game Over Man, Game Over!");
                break;
                
            default:
                NSLog(@"Readings are off the scale.  We haven't encountered this phenomenon before!");
                break;
        }
        
        
        
    }
    return 0;
}

