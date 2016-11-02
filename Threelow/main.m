//
//  main.m
//  Threelow
//
//  Created by Stefan Verveniotis on 2016-11-02.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        GameController *threelow = [[GameController alloc]initWithDice:5];
  //      while (YES) {
            for (Dice *currentDie in threelow.diceArray) {
                if (currentDie.isHeld == NO) {
                    [currentDie randomize];
                }
  //              [currentDie printDie];
            }
        
 //       }
        [threelow printDice];
    }
    return 0;
}
