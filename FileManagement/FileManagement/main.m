//
//  main.m
//  FileManagement
//
//  Created by jim Veneskey on 7/21/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        
        // /Users/biff/Desktop
        
        // most file operations are done with the NSFileManager
        NSFileManager *fileManager = [[NSFileManager alloc] init];
        
        NSString *simplePath = @"/Users/biff/Desktop/001.JPG";
        
        // does the file exist?
        if ([fileManager fileExistsAtPath:simplePath]) {
            NSLog(@"Yes - that file exists");
        } else {
            NSLog(@"No, you ninny - the file does not exist!");
            return 1;
        }
        
        // examine the attributes of the file as a dictionary
        NSDictionary *fileAttributes = [fileManager
                                        attributesOfItemAtPath:simplePath
                                        error:Nil];
        
        // enumerate through them
        for (NSString *key in fileAttributes) {
            NSLog(@"The attribute key is %@ and the value of that is: %@", key, fileAttributes[key]);
        }
        
        
        
    }
    return 0;
}

