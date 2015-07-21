//
//  main.m
//  FastEnumeration
//
//  Created by jim Veneskey on 7/21/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        

        NSString *soundPath = @"/System/Library/Sounds";
        NSFileManager *fileManager = [[NSFileManager alloc] init];
        
        // Returns an array of strings from the specified directory path
        NSArray *soundFiles = [fileManager subpathsAtPath:soundPath];
        
        for (NSString *soundFile in soundFiles) {
            NSLog(@"This is a sound file %@", soundFile);
        }
        
        
    }
    return 0;
}

