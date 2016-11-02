//
//  Dice.h
//  Threelow
//
//  Created by Stefan Verveniotis on 2016-11-02.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property int value;
@property BOOL isHeld;
@property NSArray * faces;

- (void) randomize;
- (void) holdDie;
- (NSString *) printDie;

@end
