//
//  MathUtility.m
//  Methods
//
//  Created by Jim Veneskey on 7/19/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import "MathUtility.h"

@implementation MathUtility

-(int)timesTen:(int)number {
    NSLog(@"You passed in the number %i", number);
    return number * 10;
}

-(int)addNumber:(int)a toNumber:(int)b {
    return a + b;
}

@end
