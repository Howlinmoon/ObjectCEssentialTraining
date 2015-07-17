//
//  main.m
//  ConvenienceDemo
//
//  Created by jim Veneskey on 7/17/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

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
     
        
        // Experimenting with Strings
        
        // normal method to initialize a string
        NSString *message = @"Hello";
        
        // traditional method to initialize an object
        NSString *nextMessage = [[NSString alloc] initWithFormat:@"The word is: %@", message];
        
        // A convenience method to created a similar string
        NSString *anotherMessage = [NSString stringWithFormat:@"The word is: %@", message];
        
        
        // Prove that they are working and are the same
        NSLog(@"Here are the strings I created: \n %@ \n %@", nextMessage, anotherMessage);
        
        
    }
    return 0;
}

