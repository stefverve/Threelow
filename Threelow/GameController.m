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
    NSLog(@"%@", output);
}


@end
