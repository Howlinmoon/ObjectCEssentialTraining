//
//  main.m
//  CustomClassExample
//
//  Created by Jim Veneskey on 7/18/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        
        // insert code here...
        Employee *fred = [[Employee alloc] init];
        
        // call a method
        [fred someMethod];
        // set a property
        [fred setName:@"Fred Smith"];
        
    }
    return 0;
}

