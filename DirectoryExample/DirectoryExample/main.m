//
//  main.m
//  DirectoryExample
//
//  Created by jim Veneskey on 7/21/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        

        
        
        // Simple function call to determine the users home directory
        NSString *homeDirectory = NSHomeDirectory();
        NSLog(@"Calling NSHomeDirectory() results in: %@", homeDirectory);
        
        
        NSString *desktopPath = [homeDirectory stringByAppendingPathComponent:@"Desktop"];
        NSLog(@"Desktop path is now: %@", desktopPath);
        
        
        
        
        
        // More complex and powerful - note, not alloc or init this time
        // this creates a shared one
        NSFileManager *fileManager = [NSFileManager defaultManager];
        
        NSURL *docsDirectory = [fileManager URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
        
        NSLog(@"File Manager returned: %@ ", docsDirectory);
        
        
    }
    return 0;
}

