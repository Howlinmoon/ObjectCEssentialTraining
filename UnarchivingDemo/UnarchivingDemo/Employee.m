//
//  Employee.m
//  UnarchivingDemo
//
//  Created by jim Veneskey on 7/23/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import "Employee.h"

@implementation Employee


-(void)encodeWithCoder:(NSCoder *)aCoder {
    // specify each attribute we wish to encode, and freeform key to represent them
    [aCoder encodeObject:self.firstName forKey:@"fname"];
    [aCoder encodeObject:self.lastName forKey:@"lname"];
    [aCoder encodeObject:self.hireDate forKey:@"hdate"];
    // note - the employee number is a simple primitive - not an object
    [aCoder encodeInt:self.employeeNumber forKey:@"empnum"];
}


-(id)initWithCoder:(NSCoder *)aDecoder {
    // since this is an init - we need to call the super class
    self = [super init];
    if (self) {
        // our code
        _firstName = [aDecoder decodeObjectForKey:@"fname"];
        _lastName = [aDecoder decodeObjectForKey:@"lname"];
        _hireDate = [aDecoder decodeObjectForKey:@"hdate"];
        _employeeNumber = [aDecoder decodeIntForKey:@"empnum"];
    }
    
    return self;
}

// description is a built in default method for all classes - returned by default, when no methods
// are called.
-(NSString *) description {
    NSString *desc = [NSString stringWithFormat:@"\t Employee: %i \n \t Name: %@ %@ \n \t Was hired on: %@ \n -----", [self employeeNumber], [self firstName], [self lastName], [self hireDate]];
    return desc;
}

@end