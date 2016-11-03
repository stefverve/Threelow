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
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *input = @"";
        GameController *threelow = [[GameController alloc]initWithDice:5];
        while ([input isNotEqualTo:@"quit"]) {
            input = [[[InputCollector alloc]init] getString:(NSString *)@"\n\nWhat would you like to do?\n  roll - roll all unheld dice\n  hold - choose dice to hold\n  quit - quit"];
            if ([input isEqualToString:@"quit"]) {
                return 0;
            } else if ([input isEqualToString:@"roll"]) {
                [threelow roll];
            } else if ([input isEqualToString:@"hold"]) {
                input = [[[InputCollector alloc]init] getString:(NSString *)@"\nWhich dice would you like to change?"];
                [threelow hold:(input)];
            }
        }
        [threelow printDice];
    }
    return 0;
}
