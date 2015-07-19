//
//  Player.h
//  initializerDemo
//
//  Created by Jim Veneskey on 7/19/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property int score;

-(id) initWithInteger:(int) intialScore;

@end
