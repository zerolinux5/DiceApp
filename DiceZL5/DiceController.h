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
- (IBAction)reRoll:(id)sender;
- (IBAction)d2Show:(id)sender;
- (IBAction)d4Show:(id)sender;
- (IBAction)d6Show:(id)sender;
- (IBAction)d8Show:(id)sender;
- (IBAction)d10Show:(id)sender;
- (IBAction)d12Show:(id)sender;
- (IBAction)d16Show:(id)sender;
- (IBAction)d20Show:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *d2Button;
@property (weak, nonatomic) IBOutlet UIButton *d4Button;
@property (weak, nonatomic) IBOutlet UIButton *d6Button;
@property (weak, nonatomic) IBOutlet UIButton *d8Button;
@property (weak, nonatomic) IBOutlet UIButton *d10Button;
@property (weak, nonatomic) IBOutlet UIButton *d12Button;
@property (weak, nonatomic) IBOutlet UIButton *d16Button;
@property (weak, nonatomic) IBOutlet UIButton *d20Button;


@property(nonatomic) int d2;
@property(nonatomic) int d4;
@property(nonatomic) int d6;
@property(nonatomic) int d8;
@property(nonatomic) int d10;
@property(nonatomic) int d12;
@property(nonatomic) int d16;
@property(nonatomic) int d20;

@property (weak, nonatomic) IBOutlet UILabel *result;


@end