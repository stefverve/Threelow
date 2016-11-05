//
//  Dice.m
//  Threelow
//
//  Created by Stefan Verveniotis on 2016-11-04.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        _value = arc4random_uniform(6) + 1;
        _isHeld = FALSE;
        _faces = @[@"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅"];
    }
    return self;
}

- (void) randomize {
    self.value = arc4random_uniform(6) + 1;
}

- (void) holdDie {
    self.isHeld = !self.isHeld;
}

- (NSString *) printDie {
    return self.faces[self.value - 1];
}

- (void) resetDie {
    self.isHeld = FALSE;
}

- (int) scoreDie {
    if (self.value != 3) {
        return self.value;
    }
    return 0;
}

@end
