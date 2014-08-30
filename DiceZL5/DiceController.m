//
//  DiceController.m
//  DiceZL5
//
//  Created by Jesus Magana on 8/9/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import "DiceController.h"
#import "Dice.h"

@interface DiceController ()
@end

@implementation DiceController
int buttonEnabled = -1;

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
    [self diceRoll];
}

-(void)diceRoll
{
    // Do any additional setup after loading the view.
    Dice *d2 = [[Dice alloc] init];
    [d2 setSides:2 setDice:_d2];
    Dice *d4 = [[Dice alloc] init];
    [d4 setSides:4 setDice:_d4];
    Dice *d6 = [[Dice alloc] init];
    [d6 setSides:6 setDice:_d6];
    Dice *d8 = [[Dice alloc] init];
    [d8 setSides:8 setDice:_d8];
    Dice *d10 = [[Dice alloc] init];
    [d10 setSides:10 setDice:_d10];
    Dice *d12 = [[Dice alloc] init];
    [d12 setSides:12 setDice:_d12];
    Dice *d16 = [[Dice alloc] init];
    [d16 setSides:16 setDice:_d16];
    Dice *d20 = [[Dice alloc] init];
    [d20 setSides:20 setDice:_d20];
    
    int result = 0;
    int temp = 0;
    temp = [d2 getNum];
    result += temp;
    temp = [d4 getNum];
    result += temp;
    temp = [d6 getNum];
    result += temp;
    temp = [d8 getNum];
    result += temp;
    temp = [d10 getNum];
    result += temp;
    temp = [d12 getNum];
    result += temp;
    temp = [d16 getNum];
    result += temp;
    temp = [d20 getNum];
    result += temp;
    
    self.result.text = [NSString stringWithFormat:@"%d", result];
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

-(void) buttonReset:(int)number {
    switch (number) {
        case 2:
            [self.d2Button setTitleColor:[UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
            [self.d2Button setEnabled:YES];
            break;
        case 4:
            [self.d4Button setTitleColor:[UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
            [self.d4Button setEnabled:YES];
            break;
        case 6:
            [self.d6Button setTitleColor:[UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
            [self.d6Button setEnabled:YES];
            break;
        case 8:
            [self.d8Button setTitleColor:[UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
            [self.d8Button setEnabled:YES];
            break;
        case 10:
            [self.d10Button setTitleColor:[UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
            [self.d10Button setEnabled:YES];
            break;
        case 12:
            [self.d12Button setTitleColor:[UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
            [self.d12Button setEnabled:YES];
            break;
        case 16:
            [self.d16Button setTitleColor:[UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
            [self.d16Button setEnabled:YES];
            break;
        case 20:
            [self.d20Button setTitleColor:[UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
            [self.d20Button setEnabled:YES];
            break;
        default:
            break;
    }
}

- (IBAction)newRoll:(id)sender {
    [self.delegate DiceControllerDidBack:self];
}

- (IBAction)reRoll:(id)sender {
    [self diceRoll];
}

- (IBAction)d2Show:(id)sender {
    [self buttonReset:buttonEnabled];
    [self.d2Button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.d2Button setEnabled:NO];
    buttonEnabled = 2;
}

- (IBAction)d4Show:(id)sender {
    [self buttonReset:buttonEnabled];
    [self.d4Button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.d4Button setEnabled:NO];
    buttonEnabled = 4;
}

- (IBAction)d6Show:(id)sender {
    [self buttonReset:buttonEnabled];
    [self.d6Button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.d6Button setEnabled:NO];
    buttonEnabled = 6;
}

- (IBAction)d8Show:(id)sender {
    [self buttonReset:buttonEnabled];
    [self.d8Button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.d8Button setEnabled:NO];
    buttonEnabled = 8;
}

- (IBAction)d10Show:(id)sender {
    [self buttonReset:buttonEnabled];
    [self.d10Button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.d10Button setEnabled:NO];
    buttonEnabled = 10;
}

- (IBAction)d12Show:(id)sender {
    [self buttonReset:buttonEnabled];
    [self.d12Button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.d12Button setEnabled:NO];
    buttonEnabled = 12;
}

- (IBAction)d16Show:(id)sender {
    [self buttonReset:buttonEnabled];
    [self.d16Button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.d16Button setEnabled:NO];
    buttonEnabled = 16;
}

- (IBAction)d20Show:(id)sender {
    [self buttonReset:buttonEnabled];
    [self.d20Button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.d20Button setEnabled:NO];
    buttonEnabled = 20;
}
@end
