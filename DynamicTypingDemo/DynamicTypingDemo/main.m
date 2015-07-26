//
//  main.m
//  DynamicTypingDemo
//
//  Created by Jim Veneskey on 7/26/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

// Create an array of randomly generated objects
NSMutableArray* createRandomObjects() {
    // create the array to handle the random objects
    NSMutableArray *bunchOfObjects = [[NSMutableArray alloc]init];
    
    // create 100 random objects
    for (int i = 0; i < 100; i++) {
        // generate a random number between 0 and 99
        int random = arc4random_uniform(100);
        if (random % 2 == 0) {
            NSString *s = @"Exciting string object";
            [bunchOfObjects addObject:s];
        } else {
            NSDate *d = [[NSDate alloc] init];
            [bunchOfObjects addObject:d];
        }
    }
    
    return bunchOfObjects;
}

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        
        // create some statically typed objects
        NSDate *anObject = [NSDate dateWithNaturalLanguageString:@"1st of Jan"];
        NSString *anotherObject = @"Hello World";
        NSLog(@"The object is %@", anObject);
        NSLog(@"The object is %@", anotherObject);
        
        NSLog(@"The uppercased is: %@", [anotherObject uppercaseString]);
        
        // call our bunch of objects generator
        NSMutableArray *bunchOfObjects = createRandomObjects();
        
        // iterate through whatever we got
        // we'll assign to 'id' - which is always a pointer
        for (id currentObject in bunchOfObjects) {
            NSLog(@"The current object is: %@", currentObject);
            
            // uppercaseString only applies to NSStrings - so
            // we need to check the type
            
            if ([currentObject isKindOfClass:[NSString class]]) {
                NSLog(@"This may be uppercased: %@", [currentObject uppercaseString]);
            } else {
                NSLog(@"No uppercased for you - you are a date");
            }
            
            // Another way - see if the current objects responds to a particular method type
            if ([currentObject respondsToSelector:@selector(uppercaseString)]) {
                NSLog(@"This object responded tot he uppercaseString selector");
            }
        }
        
    }
    return 0;
}

