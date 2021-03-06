//
//  GameController.h
//  Threelow
//
//  Created by Stefan Verveniotis on 2016-11-02.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property (nonatomic) NSMutableArray * diceArray;

- (instancetype) initWithDice: (int) numOfDice;

- (void) printDice;
- (void) roll;
- (void) hold: (NSString *)input;
- (void) reset;
- (int) tally;
- (void) score;

@end
