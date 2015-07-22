//
//  Employee.m
//  ArchivingDemo
//
//  Created by jim Veneskey on 7/22/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import "Employee.h"

@implementation Employee

// description is a built in default method for all classes - returned by default, when no methods
// are called.
-(NSString *) description {
    NSString *desc = [NSString stringWithFormat:@"\t Employee: %i \n \t Name: %@ %@ \n \t Was hired on: %@ \n -----", [self employeeNumber], [self firstName], [self lastName], [self hireDate]];
    return desc;
}

@end
