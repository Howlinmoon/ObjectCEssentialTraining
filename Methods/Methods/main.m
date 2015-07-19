//
//  main.m
//  Methods
//
//  Created by Jim Veneskey on 7/19/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>
# import "MathUtility.h"

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        
        // insert code here...
        MathUtility *util = [[MathUtility alloc] init];
        
        int result = [util timesTen:55];
        NSLog(@"The result of timesTen: - %i", result);
        
        result = [util addNumber:99 toNumber:42];
        NSLog(@"The result of addNumber:toNumber: - %i", result);
        
    }
    return 0;
}

