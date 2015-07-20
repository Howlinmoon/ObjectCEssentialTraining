//
//  main.m
//  ObjectiveCArrays
//
//  Created by jim Veneskey on 7/20/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *myDate = [[NSDate alloc] init];
        
        // creating an array of objects, the Objective C way
        NSArray *myArray = [[NSArray alloc] initWithObjects:@"one", @"two", @"three", myDate, nil];
        NSLog(@"The third object in myArray is %@", [myArray objectAtIndex:2]);
        // can also use this shortcut method
        NSLog(@"The second object in myArray is %@", myArray[1]);
        // accessing the date object
        NSLog(@"Accessing the date object at index 3: %@", myArray[3]);
        
        // this array is mutable:
        NSMutableArray *myMutieArray = [[NSMutableArray alloc] initWithObjects:@"one", @"two", @"three", myDate, nil];
        NSLog(@"Before altering the mutie array, index 2 is: %@", myMutieArray[2]);
        // update it
        myMutieArray[2] = @"Now Updated";
        NSLog(@"After altering, index 2 is now: %@", myMutieArray[2]);
        // add an object to it
        [myMutieArray addObject:@"Freshly Added"];
        // and subtract the first one
        [myMutieArray removeObjectAtIndex:0];
        NSLog(@"After altering, index 0 is now: %@", myMutieArray[0]);
        
        // Short hand style of declaring NS Arrays (non-mutable!)
        NSArray *newArray = @[ @"Apple", @"Peach", @"Cherry", @"Pear", myDate ];
        NSLog(@"Testing the newArray index 3: %@", newArray[3]);
        
    }
    return 0;
}

