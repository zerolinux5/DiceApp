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
- (IBAction)d2StepFunction:(UIStepper *)sender;

@end
