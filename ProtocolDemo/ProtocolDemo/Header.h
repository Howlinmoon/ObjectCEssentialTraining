//
//  Header.h
//  ProtocolDemo
//
//  Created by Jim Veneskey on 7/26/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Cleaner <NSObject>

// our required method types and return signatures

-(void) cleanFloors;
-(BOOL) emptyTrash;
// etc.


@end
