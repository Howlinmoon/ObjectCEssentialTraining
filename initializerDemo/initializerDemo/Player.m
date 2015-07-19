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
    // The default
    NSLog(@"You called the init default method");
    self = [self initWithInteger:5010];
    return self;
}

// The designated initializer - the real workhorse
- (id)initWithInteger: (int) initialScore {
    // our custom init

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
