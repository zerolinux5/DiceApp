//
//  DiceController.h
//  DiceZL5
//
//  Created by Jesus Magana on 8/9/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DiceController;

@protocol DiceControllerDelegate <NSObject>
- (void) DiceControllerDidBack:(DiceController *) controller;
@end

@interface DiceController : UIViewController <UITextViewDelegate>
@property (nonatomic, weak) id <DiceControllerDelegate> delegate;
- (IBAction)newRoll:(id)sender;

@property(nonatomic) int d2;
@property(nonatomic) int d4;
@property(nonatomic) int d6;
@property(nonatomic) int d8;
@property(nonatomic) int d10;
@property(nonatomic) int d12;
@property(nonatomic) int d16;
@property(nonatomic) int d20;

@property (weak, nonatomic) IBOutlet UILabel *result;

@property (weak, nonatomic) IBOutlet UILabel *d2Int;
@property (weak, nonatomic) IBOutlet UILabel *d6Int;
@property (weak, nonatomic) IBOutlet UILabel *d10Int;
@property (weak, nonatomic) IBOutlet UILabel *d16Int;
@property (weak, nonatomic) IBOutlet UILabel *d4Int;
@property (weak, nonatomic) IBOutlet UILabel *d8Int;
@property (weak, nonatomic) IBOutlet UILabel *d12Int;
@property (weak, nonatomic) IBOutlet UILabel *d20Int;


@end