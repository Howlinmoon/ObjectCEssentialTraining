//
//  Player.m
//  initializerDemo
//
//  Created by Jim Veneskey on 7/19/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import "Player.h"

@implementation Player
- (id)init {
    // call the master init for all objects
    self = [super init];
    // did the init work?
    if (self != nil) {
        // yes - customization goes here
        NSLog(@"You called the init method for Player!");
        
        _score = 5000;
    }
    return self;
}

- (id)initWithInteger: (int) initialScore {
    // call the master init for all objects
    self = [super init];
    // did the init work?
    if (self != nil) {
        // yes - customization goes here
        NSLog(@"You called the initWithInteger method for Player!");
        
        _score = initialScore;
    }
    return self;
}
@end
