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
    NSMutableArray *items;
}
@end

@implementation Dice

-(void) setSides:(int)numOfSides setDice:(int)numOfDice{
    value = numOfSides;
    dice = numOfDice;
    items = [[NSMutableArray alloc] init];
}

//Add to the mutable array and to the total value
-(int) getNum{
    [items removeAllObjects];
    int randomNum = 0;
    for(int i = 0; i < dice;i++){
        int currentRand = (arc4random_uniform(value) + 1);
        [items addObject:[NSNumber numberWithInteger:currentRand]];
        randomNum += currentRand;
    }
    return randomNum;
}

//Access each index, the user should know how far to index
-(int) getArrayNum:(int)location{
    return [[items objectAtIndex:location] intValue];
}

@end
