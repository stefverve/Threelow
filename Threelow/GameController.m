//
//  GameController.m
//  Threelow
//
//  Created by Stefan Verveniotis on 2016-11-02.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "GameController.h"


@implementation GameController

- (instancetype) initWithDice: (int) numOfDice {
    self = [super init];
    if (self) {
        _diceArray = [NSMutableArray new];
        for (int i = 1; i <= numOfDice; i++) {
            [self.diceArray addObject:[Dice new]];
        }
    }
    return self;
}

- (void) printDice {
    NSMutableString *output = [NSMutableString new];
    for (Dice *d in self.diceArray) {
        if (d.isHeld) {
            [output appendString:@"["];
            [output appendString:d.printDie];
            [output appendString:@"]"];
        } else {
            [output appendString:@" "];
            [output appendString:d.printDie];
            [output appendString:@" "];
        }
    }
    NSLog(@"%@ :%d", output, [self tally]);
}

- (void) roll {
    for (Dice *d in self.diceArray) {
        if (!d.isHeld) {
            [d randomize];
        }
    }
    [self printDice];
}

- (void) hold: (NSString *)input {
    NSMutableSet *diceToHold = [NSMutableSet new];
    for (int i = 0; i < [input length]; i++) {
        int getIntFromInput = [[[input substringFromIndex:i] substringToIndex:1] intValue];
        if (getIntFromInput > 0 && getIntFromInput <= 5) {
            [diceToHold addObject:[NSNumber numberWithInteger:getIntFromInput]];
        }
    }
    for (NSNumber *i in diceToHold) {
        [self.diceArray[i.intValue - 1] holdDie];
    }
}

- (void) reset {
    for (Dice *d in self.diceArray) {
        [d resetDie];
    }
}

- (int) tally {
    int tally = 0;
    for (Dice *d in self.diceArray) {
        tally += [d scoreDie];
    }
    return tally;
}

- (void) score; {
    NSLog(@"\n Your score is %d", [self tally]);
    [self reset];
}

@end
