//
//  DiceController.m
//  DiceZL5
//
//  Created by Jesus Magana on 8/9/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import "DiceController.h"
#import "Dice.h"

@interface DiceController (){
    int diceArray[8];
}
@end

@implementation DiceController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    NSLog(@"This is value number %d",_d2);
    NSLog(@"This is value number %d",_d4);
    NSLog(@"This is value number %d",_d6);
    NSLog(@"This is value number %d",_d8);
    NSLog(@"This is value number %d",_d10);
    NSLog(@"This is value number %d",_d12);
    NSLog(@"This is value number %d",_d16);
    NSLog(@"This is value number %d",_d20);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)newRoll:(id)sender {
    [self.delegate DiceControllerDidBack:self];
}
@end
