//
//  main.m
//  CategoryDemo
//
//  Created by Jim Veneskey on 7/25/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+FormattingOptions.h"

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        
        NSString *message = @"The quick brown fox jumped over the lazy dog";
        NSLog(@"String prior to conversion call:");
        NSLog(@"%@",message);
        NSLog(@"String after the conversion call: %@", [message convertWhitespace]);
        
    }
    return 0;
}

