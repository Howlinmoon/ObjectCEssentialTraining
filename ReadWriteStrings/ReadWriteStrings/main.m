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
        
        // create a string for reading in the file (now mutable)
        NSMutableString *content = [[NSMutableString alloc] initWithContentsOfURL:full encoding:NSUTF8StringEncoding error:nil];
        
        // write it out
        NSLog(@"The original content is: %@", content);
        
        // Update the string
        [content appendString:@"This is new content added to the string"];

        // write it out
        NSLog(@"The updated content is: %@", content);
        
        // Create a new filename to store it under
        NSURL *saveLocation = [documentDir URLByAppendingPathComponent:@"saved.text"];
        
        // Write it out using a method of the NSURL
        [content writeToURL:saveLocation atomically:YES encoding:NSUTF8StringEncoding error:nil];
        
        
    }
    return 0;
}

