//
//  Dice.h
//  DiceZL5
//
//  Created by Jesus Magana on 8/9/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

-(void) setSides:(int)numOfSides setDice:(int)numOfDice;
-(int) getNum;
-(int) getArrayNum:(int)location;

@end
