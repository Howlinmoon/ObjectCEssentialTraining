//
//  main.m
//  MessagesExample
//
//  Created by jim Veneskey on 7/14/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        
        int minutes = 60;
        int hours = 24;
        int days = 365;
        
        int minutesInAYear = minutes * hours * days;
        
        NSLog(@"There are %i minutes in a year", minutesInAYear);
        
        
        // If example
        
        
        int stormCategory = 4;
        
        if (stormCategory > 1) {
            NSLog(@"Storm's a-coming!");
        }
        
        if (stormCategory == 4 || stormCategory == 5) {
            NSLog(@"Catastrophe!");
        }
        
        

    }
    return 0;
}

