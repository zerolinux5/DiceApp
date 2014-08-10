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

@end