//
//  main.m
//  ConvenienceDemo
//
//  Created by jim Veneskey on 7/17/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create a normal NSDate
        NSDate *myDate = [[NSDate alloc] init];
        
        // Creating it with a specialized init
        NSDate *nextDate = [[NSDate alloc] initWithTimeIntervalSince1970:23234544];
        
        // Creating it with a convenience class method
        NSDate *anotherDate = [NSDate date];
        
        // A variation of a previous example
        NSDate *yetAnotherDate = [NSDate dateWithTimeIntervalSince1970:23234544];
        
        
        // Write them all out
        NSLog(@"Here come all of the dates: \n %@ \n %@ \n %@ \n %@", myDate, nextDate, anotherDate, yetAnotherDate);
        
    }
    return 0;
}

