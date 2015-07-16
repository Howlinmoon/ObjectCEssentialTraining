//
//  main.m
//  PassByValueStarter
//
//  Created by jim Veneskey on 7/16/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

// New function, takes one int and adds to it
void performAddition(int scoreParameter) {
    scoreParameter += 5000;
    NSLog(@"Inside the function, the value is now: %i", scoreParameter);
}

// this function takes the same int - and returns the modified version
int performAddition2(int scoreParameter) {
    scoreParameter += 5000;
    NSLog(@"Inside the new function, the value is now: %i", scoreParameter);
    return scoreParameter;
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // define a new variable
        int highScore = 10;
        
        // pass it to the function
        performAddition(highScore);
        
        // write out the value
        NSLog(@"Back in main, highScore is: %i", highScore);

        highScore = performAddition2(highScore);
        // write out the value
        NSLog(@"Back in main, highScore is: %i", highScore);
       
        
    }
    return 0;
}

