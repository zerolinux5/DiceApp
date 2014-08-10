//
//  ViewController.m
//  DiceZL5
//
//  Created by Jesus Magana on 8/9/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
@private
    int diceArray[8];
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    for(int i = 0; i < 8; i++){
        diceArray[i] = 0;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"dice"]) {
        diceArray[0] = (int)self.d2Int.text.intValue;
        diceArray[1] = (int)self.d4Int.text.intValue;
        diceArray[2] = (int)self.d6Int.text.intValue;
        diceArray[3] = (int)self.d8Int.text.intValue;
        diceArray[4] = (int)self.d10Int.text.intValue;
        diceArray[5] = (int)self.d12Int.text.intValue;
        diceArray[6] = (int)self.d16Int.text.intValue;
        diceArray[7] = (int)self.d20Int.text.intValue;
        
        DiceController *diceController = (DiceController *)[segue destinationViewController];
        diceController.d2 = diceArray[0];
        diceController.d4 = diceArray[1];
        diceController.d6 = diceArray[2];
        diceController.d8 = diceArray[3];
        diceController.d10 = diceArray[4];
        diceController.d12 = diceArray[5];
        diceController.d16 = diceArray[6];
        diceController.d20 = diceArray[7];
        diceController.delegate = self;
    }
}

- (void)DiceControllerDidBack:(DiceController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)d2StepFunction:(UIStepper *)sender {
    int value = sender.value;
    self.d2Int.text = [NSString stringWithFormat:@"%03d", value];
}

- (IBAction)d6StepFunction:(UIStepper *)sender {
    int value = sender.value;
    self.d6Int.text = [NSString stringWithFormat:@"%03d", value];
}

- (IBAction)d10StepFunction:(UIStepper *)sender {
    int value = sender.value;
    self.d10Int.text = [NSString stringWithFormat:@"%03d", value];
}

- (IBAction)d16StepFunction:(UIStepper *)sender {
    int value = sender.value;
    self.d16Int.text = [NSString stringWithFormat:@"%03d", value];
}

- (IBAction)d4StepFunction:(UIStepper *)sender {
    int value = sender.value;
    self.d4Int.text = [NSString stringWithFormat:@"%03d", value];
}

- (IBAction)d8StepFunction:(UIStepper *)sender {
    int value = sender.value;
    self.d8Int.text = [NSString stringWithFormat:@"%03d", value];
}

- (IBAction)d12StepFunction:(UIStepper *)sender {
    int value = sender.value;
    self.d12Int.text = [NSString stringWithFormat:@"%03d", value];
}

- (IBAction)d20StepFunction:(UIStepper *)sender {
    int value = sender.value;
    self.d20Int.text = [NSString stringWithFormat:@"%03d", value];
}
@end
