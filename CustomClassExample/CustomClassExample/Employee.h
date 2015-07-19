//
//  Employee.h
//  CustomClassExample
//
//  Created by Jim Veneskey on 7/18/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject

@property NSString *name;
@property NSDate *hireDate;

// note - not a pointer
@property int employeeNumber;

// Methods
-(void) someMethod;


@end
