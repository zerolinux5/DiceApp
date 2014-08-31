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
UILabel *label;
CGRect screenRect;
CGFloat screenWidth;
CGFloat screenHeight;
Dice *d2;
Dice *d4;
Dice *d6;
Dice *d8;
Dice *d10;
Dice *d12;
Dice *d16;
Dice *d20;

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
    d2 = [[Dice alloc] init];
    d4 = [[Dice alloc] init];
    d6 = [[Dice alloc] init];
    d8 = [[Dice alloc] init];
    d10 = [[Dice alloc] init];
    d12 = [[Dice alloc] init];
    d16 = [[Dice alloc] init];
    d20 = [[Dice alloc] init];
    
    [self diceRoll];
    
    screenRect = [[UIScreen mainScreen] bounds];
    screenWidth = screenRect.size.width;
    screenHeight = screenRect.size.height;
    
}

-(void)diceRoll
{
    //Roll all the dice
    [d2 setSides:2 setDice:_d2];
    [d4 setSides:4 setDice:_d4];
    [d6 setSides:6 setDice:_d6];
    [d8 setSides:8 setDice:_d8];
    [d10 setSides:10 setDice:_d10];
    [d12 setSides:12 setDice:_d12];
    [d16 setSides:16 setDice:_d16];
    [d20 setSides:20 setDice:_d20];

    //add the result one set at a time
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
    //reset the button that was last used
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
    //return to previous screen
    [self.delegate DiceControllerDidBack:self];
}

- (IBAction)reRoll:(id)sender {
    //start this screen over
    [self buttonReset:buttonEnabled];
    if(buttonEnabled != -1){
        [label removeFromSuperview];
    }
    buttonEnabled = -1;
    [self diceRoll];
}

//The methods for each button
- (IBAction)d2Show:(id)sender {
    if(buttonEnabled != -1){
        [label removeFromSuperview];
    }
    [self buttonReset:buttonEnabled];
    [self.d2Button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.d2Button setEnabled:NO];
    buttonEnabled = 2;
    
    NSString *arrayLabel = @"";
    label =  [[UILabel alloc] initWithFrame: CGRectMake((screenHeight/2)-10,(screenWidth/2),50,50)];
    for(int i = 0; i < _d2;i++){
        NSString *strFromInt = [NSString stringWithFormat:@"%d ",[d2 getArrayNum:i]];
        arrayLabel = [arrayLabel stringByAppendingString:strFromInt];
    }
    label.text = arrayLabel;
    [self.view addSubview:label];
}

- (IBAction)d4Show:(id)sender {
    if(buttonEnabled != -1){
        [label removeFromSuperview];
    }
    [self buttonReset:buttonEnabled];
    [self.d4Button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.d4Button setEnabled:NO];
    buttonEnabled = 4;
    
    NSString *arrayLabel = @"";
    label =  [[UILabel alloc] initWithFrame: CGRectMake((screenHeight/2)-10,(screenWidth/2),50,50)];
    for(int i = 0; i < _d4;i++){
        NSString *strFromInt = [NSString stringWithFormat:@"%d ",[d4 getArrayNum:i]];
        arrayLabel = [arrayLabel stringByAppendingString:strFromInt];
    }
    label.text = arrayLabel;
    [self.view addSubview:label];
}

- (IBAction)d6Show:(id)sender {
    if(buttonEnabled != -1){
        [label removeFromSuperview];
    }
    [self buttonReset:buttonEnabled];
    [self.d6Button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.d6Button setEnabled:NO];
    buttonEnabled = 6;
    
    NSString *arrayLabel = @"";
    label =  [[UILabel alloc] initWithFrame: CGRectMake((screenHeight/2)-10,(screenWidth/2),50,50)];
    for(int i = 0; i < _d6;i++){
        NSString *strFromInt = [NSString stringWithFormat:@"%d ",[d6 getArrayNum:i]];
        arrayLabel = [arrayLabel stringByAppendingString:strFromInt];
    }
    label.text = arrayLabel;
    [self.view addSubview:label];
}

- (IBAction)d8Show:(id)sender {
    if(buttonEnabled != -1){
        [label removeFromSuperview];
    }
    [self buttonReset:buttonEnabled];
    [self.d8Button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.d8Button setEnabled:NO];
    buttonEnabled = 8;
    
    NSString *arrayLabel = @"";
    label =  [[UILabel alloc] initWithFrame: CGRectMake((screenHeight/2)-10,(screenWidth/2),50,50)];
    for(int i = 0; i < _d8;i++){
        NSString *strFromInt = [NSString stringWithFormat:@"%d ",[d8 getArrayNum:i]];
        arrayLabel = [arrayLabel stringByAppendingString:strFromInt];
    }
    label.text = arrayLabel;
    [self.view addSubview:label];
}

- (IBAction)d10Show:(id)sender {
    if(buttonEnabled != -1){
        [label removeFromSuperview];
    }
    [self buttonReset:buttonEnabled];
    [self.d10Button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.d10Button setEnabled:NO];
    buttonEnabled = 10;
    
    NSString *arrayLabel = @"";
    label =  [[UILabel alloc] initWithFrame: CGRectMake((screenHeight/2)-10,(screenWidth/2),50,50)];
    for(int i = 0; i < _d10;i++){
        NSString *strFromInt = [NSString stringWithFormat:@"%d ",[d10 getArrayNum:i]];
        arrayLabel = [arrayLabel stringByAppendingString:strFromInt];
    }
    label.text = arrayLabel;
    [self.view addSubview:label];
}

- (IBAction)d12Show:(id)sender {
    if(buttonEnabled != -1){
        [label removeFromSuperview];
    }
    [self buttonReset:buttonEnabled];
    [self.d12Button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.d12Button setEnabled:NO];
    buttonEnabled = 12;
    
    NSString *arrayLabel = @"";
    label =  [[UILabel alloc] initWithFrame: CGRectMake((screenHeight/2)-10,(screenWidth/2),50,50)];
    for(int i = 0; i < _d12;i++){
        NSString *strFromInt = [NSString stringWithFormat:@"%d ",[d12 getArrayNum:i]];
        arrayLabel = [arrayLabel stringByAppendingString:strFromInt];
    }
    label.text = arrayLabel;
    [self.view addSubview:label];
}

- (IBAction)d16Show:(id)sender {
    if(buttonEnabled != -1){
        [label removeFromSuperview];
    }
    [self buttonReset:buttonEnabled];
    [self.d16Button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.d16Button setEnabled:NO];
    buttonEnabled = 16;
    
    NSString *arrayLabel = @"";
    label =  [[UILabel alloc] initWithFrame: CGRectMake((screenHeight/2)-10,(screenWidth/2),50,50)];
    for(int i = 0; i < _d16;i++){
        NSString *strFromInt = [NSString stringWithFormat:@"%d ",[d16 getArrayNum:i]];
        arrayLabel = [arrayLabel stringByAppendingString:strFromInt];
    }
    label.text = arrayLabel;
    [self.view addSubview:label];
}

- (IBAction)d20Show:(id)sender {
    if(buttonEnabled != -1){
        [label removeFromSuperview];
    }
    [self buttonReset:buttonEnabled];
    [self.d20Button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.d20Button setEnabled:NO];
    buttonEnabled = 20;
    
    NSString *arrayLabel = @"";
    label =  [[UILabel alloc] initWithFrame: CGRectMake((screenHeight/2)-10,(screenWidth/2),50,50)];
    for(int i = 0; i < _d20;i++){
        NSString *strFromInt = [NSString stringWithFormat:@"%d ",[d20 getArrayNum:i]];
        arrayLabel = [arrayLabel stringByAppendingString:strFromInt];
    }
    label.text = arrayLabel;
    [self.view addSubview:label];
}
@end
