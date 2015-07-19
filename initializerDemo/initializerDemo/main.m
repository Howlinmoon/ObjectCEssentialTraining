//
//  main.m
//  initializerDemo
//
//  Created by Jim Veneskey on 7/19/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>
# import "Player.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {

        // create an instance of our new class
        Player *playerObject = [[Player alloc] init];
        // access the property we initialized
        NSLog(@"The score for this player is %i", [playerObject score]);
        
        Player *playerObject2 = [[Player alloc] initWithInteger:1000];
        NSLog(@"The score for player2 is %i", [playerObject2 score]);
        
    }
    return 0;
}

