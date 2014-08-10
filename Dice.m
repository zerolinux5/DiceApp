//
//  Dice.m
//  DiceZL5
//
//  Created by Jesus Magana on 8/9/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import "Dice.h"
#include <stdlib.h>

@interface Dice()
{
@private
    int value;
    int dice;
}
@end

@implementation Dice

-(void) setSides:(int)numOfSides setDice:(int)numOfDice{
    value = numOfSides;
    dice = numOfDice;
}

-(int) getNum{
    int randomNum = 0;
    for(int i = 0; i < dice;i++){
        randomNum += (arc4random_uniform(value) + 1);
    }
    return randomNum;
}

@end
