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

@end
