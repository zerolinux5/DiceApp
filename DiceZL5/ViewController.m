//
//  ViewController.m
//  DiceZL5
//
//  Created by Jesus Magana on 8/9/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"dice"]) {
        
        DiceController *diceController = (DiceController *)[segue destinationViewController];
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
