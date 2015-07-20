//
//  main.m
//  DictionaryExample
//
//  Created by jim Veneskey on 7/20/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Unlike other languages - dictionaries are in the order: VALUE,KEY
        NSDictionary *states = [[NSDictionary alloc]
                                initWithObjectsAndKeys:
                                @"Arizona", @"AZ",
                                @"Ohio", @"OH",
                                @"California", @"CA",
                                @"Michigan", @"MI",
                                @"Colorado", @"CO",
                                nil];
        
        NSString *someState = @"OH";
        NSLog(@" %@ is for %@", someState, [states objectForKey:someState]);
        
        // Shorthand version
        NSLog(@" %@ is for %@ take II", someState, states[someState]);

        
        // like normal arrays, there is a mutable version
        // Unlike other languages - dictionaries are in the order: VALUE,KEY
        NSMutableDictionary *mutieStates = [[NSMutableDictionary alloc]
                                initWithObjectsAndKeys:
                                @"Arizona", @"AZ",
                                @"Ohio", @"OH",
                                @"California", @"CA",
                                @"Michigan", @"MI",
                                @"Colorado", @"CO",
                                nil];
        
        // create a new element
        [mutieStates setObject:@"Florida" forKey:@"FL"];
        
        // shorthand method - note the PROPER ordering of key,value
        NSDictionary *quicker = @{
                                  @"AZ" : @"Arizona",
                                  @"TX" : @"Taxes",
                                  @"NJ" : @"New Joisey",
                                  @"KY" : @"Kenturkey"
                                  };
        NSLog(@"Testing quicker - KY is the key for %@", quicker[@"KY"]);

    }
    return 0;
}

