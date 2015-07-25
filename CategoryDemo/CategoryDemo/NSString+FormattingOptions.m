//
//  NSString+FormattingOptions.m
//  CategoryDemo
//
//  Created by Jim Veneskey on 7/25/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import "NSString+FormattingOptions.h"

@implementation NSString (FormattingOptions)

-(NSString *)convertWhitespace {
    NSString *newString = [self stringByReplacingOccurrencesOfString:@" " withString:@"_"];
    return newString;
}

@end
