//
//  main.m
//  ArchivingDemo
//
//  Created by jim Veneskey on 7/22/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        
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
        [NSKeyedArchiver archiveRootObject:employees toFile:@"/Users/biff/Documents/employees.plist"];
    }
    return 0;
}

