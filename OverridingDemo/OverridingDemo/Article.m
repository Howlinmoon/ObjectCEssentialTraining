//
//  Article.m
//  OverridingDemo
//
//  Created by jim Veneskey on 7/24/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import "Article.h"

@implementation Article

// override the init method
- (id)init {
    self = [super init];
    if (self) {
        //
        NSLog(@"You called the init method of Article!");
    }
    return self;
}

// override the class default description method
-(NSString *)description {
    // return something meaningful
    return @"Uh, I'm an article object, that is all I know.";
}

@end
