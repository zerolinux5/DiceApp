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
    self.d2Int.text = [NSString stringWithFormat:@"%d", temp];
    result += temp;
    temp = [d4 getNum];
    self.d4Int.text = [NSString stringWithFormat:@"%d", temp];
    result += temp;
    temp = [d6 getNum];
    self.d6Int.text = [NSString stringWithFormat:@"%d", temp];
    result += temp;
    temp = [d8 getNum];
    self.d8Int.text = [NSString stringWithFormat:@"%d", temp];
    result += temp;
    temp = [d10 getNum];
    self.d10Int.text = [NSString stringWithFormat:@"%d", temp];
    result += temp;
    temp = [d12 getNum];
    self.d12Int.text = [NSString stringWithFormat:@"%d", temp];
    result += temp;
    temp = [d16 getNum];
    self.d16Int.text = [NSString stringWithFormat:@"%d", temp];
    result += temp;
    temp = [d20 getNum];
    self.d20Int.text = [NSString stringWithFormat:@"%d", temp];
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

- (IBAction)newRoll:(id)sender {
    [self.delegate DiceControllerDidBack:self];
}
@end
