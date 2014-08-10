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
}
@end

@implementation Dice

-(void) setSides:(int) numOfSides{
    value = numOfSides;
}

-(int) getNum{
    int randomNum =(arc4random() % value) + 1;
    return randomNum;
}

@end
