//
//  main.m
//  UnarchivingDemo
//
//  Created by jim Veneskey on 7/23/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

// supporting functions
NSString* getPropertyListPath() {
    // use the Documents directory - preferred URL method
    NSURL *documentDir = [[NSFileManager defaultManager]
                          URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:Nil create:NO error:nil];
    NSURL *plist = [documentDir URLByAppendingPathComponent:@"employees.plist"];
    return plist.path;
}

void createAndArchiveObjects(NSString *filePath) {
    NSLog(@"Creating the archive data");
    // create an employee object
    Employee *bob = [[Employee alloc] init];
    [bob setFirstName:@"Robert"];
    [bob setLastName:@"Conrad"];
    [bob setEmployeeNumber:12345];
    [bob setHireDate:[NSDate date]];
    
    // create a second employee object using dot syntax
    Employee *alice = [[Employee alloc] init];
    alice.firstName = @"Alice";
    alice.lastName = @"Inwonderland";
    alice.employeeNumber = 45678;
    alice.hireDate = [NSDate dateWithString:@"2015-01-17 09:00:30 -0400"];
    
    NSLog(@"First Employee: %@", [bob description]);
    NSLog(@"Second Employee: %@", alice);
    
    // Todo save code here
    // create an array to hold our employees
    NSMutableArray *employees = [[NSMutableArray alloc] init];
    // add our employees
    [employees addObject:bob];
    [employees addObject:alice];
    
    // Save the array
    NSLog(@"Saving the archive data");
    [NSKeyedArchiver archiveRootObject:employees toFile:filePath];
}

void unarchiveSavedObjects(NSString *filePath) {
    // Add Code here to unarchive
    NSMutableArray *employees = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    
    for (Employee *currentEmployee in employees) {
        NSLog(@"The unarchived, reconstituted object is: %@", currentEmployee);
    }
}

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        
        NSString *path = getPropertyListPath();
        
        // check if file exists
        if ( [[NSFileManager defaultManager] fileExistsAtPath:path]) {
            // yes the file is there - load them in
            unarchiveSavedObjects(path);
        } else {
            // No - the file is not there yet - create it
            createAndArchiveObjects(path);
        }
        
    }
    return 0;
}

