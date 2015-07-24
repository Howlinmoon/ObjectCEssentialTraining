//
//  main.m
//  OverridingDemo
//
//  Created by jim Veneskey on 7/24/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Article.h"


int main(int argc, const char * argv[]) {

    @autoreleasepool {
        

        // Even w/out doing anything - you can alloc and init the object - since those
        // methods are defined in the inherited super class - NSObject
        
        Article *a = [[Article alloc]init];
        Article *b = [[Article alloc]init];
        Article *c = [[Article alloc]init];
        
        // call description method
        NSDate *myDate = [NSDate dateWithNaturalLanguageString:@"jan 1st last year"];
        NSLog(@"myDate: %@", [myDate description]);
        NSLog(@"myDate using the default method: %@", myDate);
        
        // default descriptions
        NSLog(@"Articles we defined: \n %@ \n %@ \n %@", a, b, c);
        
        NSFileManager *myFM = [[NSFileManager alloc]init];
        NSLog(@"mfFM: %@", myFM);
        
    }
    return 0;
}

