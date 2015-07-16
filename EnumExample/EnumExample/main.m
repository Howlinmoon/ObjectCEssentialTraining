//
//  main.m
//  EnumExample
//
//  Created by jim Veneskey on 7/16/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

# define our enum
enum seatPreferance {
    window = 1,
    aisle = 2,
    middle = 4
};


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        

        // enumerated data type
        enum seatPreferance bobSeatPreferance = middle;
        enum seatPreferance jimSeatPreferance = aisle;
        // this is an error, since 'front' is not in our list of enumerated types
        // enum seatPreferance someoneSeatPreference = front;
        
        NSLog(@"bobSeatPreferance: %i", bobSeatPreferance);
        
        switch (bobSeatPreferance) {
            case window:
                NSLog(@"Bob prefers the window seat");
                break;
                
            case aisle:
                NSLog(@"Bob prefers the aisle seat");
                break;
                
            case middle:
                NSLog(@"Bob is crazy, he prefers the middle seat");
                break;
                
            default:
                NSLog(@"Bob has no seat preference");
                break;
        }
        
        
    }
    return 0;
}

