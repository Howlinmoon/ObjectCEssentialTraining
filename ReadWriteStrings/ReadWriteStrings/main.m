//
//  main.m
//  ReadWriteStrings
//
//  Created by jim Veneskey on 7/22/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // get the documents directory
        NSURL *documentDir = [[NSFileManager defaultManager] URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
        
        // using the documents directory object - point to the file sample.txt
        NSURL *full = [documentDir URLByAppendingPathComponent:@"sample.txt"];
        
        // create a string for reading in the file
        NSString *content = [[NSString alloc] initWithContentsOfURL:full encoding:NSUTF8StringEncoding error:nil];
        
        // write it out
        NSLog(@"The string is: %@", content);
        
        
        
        
    }
    return 0;
}

