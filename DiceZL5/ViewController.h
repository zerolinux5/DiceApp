//
//  ViewController.h
//  DiceZL5
//
//  Created by Jesus Magana on 8/9/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DiceController.h"

@interface ViewController : UIViewController <DiceControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *d2Int;
@property (weak, nonatomic) IBOutlet UILabel *d6Int;
@property (weak, nonatomic) IBOutlet UILabel *d10Int;
@property (weak, nonatomic) IBOutlet UILabel *d16Int;
@property (weak, nonatomic) IBOutlet UILabel *d4Int;
@property (weak, nonatomic) IBOutlet UILabel *d8Int;
@property (weak, nonatomic) IBOutlet UILabel *d12Int;
@property (weak, nonatomic) IBOutlet UILabel *d20Int;

@property (weak, nonatomic) IBOutlet UIStepper *d2Stepper;
@property (weak, nonatomic) IBOutlet UIStepper *d6Stepper;
@property (weak, nonatomic) IBOutlet UIStepper *d10Stepper;
@property (weak, nonatomic) IBOutlet UIStepper *d16Stepper;
@property (weak, nonatomic) IBOutlet UIStepper *d4Stepper;
@property (weak, nonatomic) IBOutlet UIStepper *d8Stepper;
@property (weak, nonatomic) IBOutlet UIStepper *d12Stepper;
@property (weak, nonatomic) IBOutlet UIStepper *d20Stepper;


- (IBAction)d2StepFunction:(UIStepper *)sender;
- (IBAction)d6StepFunction:(UIStepper *)sender;
- (IBAction)d10StepFunction:(UIStepper *)sender;
- (IBAction)d16StepFunction:(UIStepper *)sender;
- (IBAction)d4StepFunction:(UIStepper *)sender;
- (IBAction)d8StepFunction:(UIStepper *)sender;
- (IBAction)d12StepFunction:(UIStepper *)sender;
- (IBAction)d20StepFunction:(UIStepper *)sender;

@end
