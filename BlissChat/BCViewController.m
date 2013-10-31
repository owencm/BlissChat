//
//  BCViewController.m
//  BlissChat
//
//  Created by Owen Campbell-Moore on 10/29/13.
//  Copyright (c) 2013 Owen Campbell-Moore. All rights reserved.
//

#import "BCViewController.h"
#import "Smooth_Line_ViewViewController.h"

@interface BCViewController ()

@end

@implementation BCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    inputViewController = [[Smooth_Line_ViewViewController alloc] init];
    
    [self.inputContainer addSubview:inputViewController.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendPressed:(id)sender {
    CGPathRef path = [inputViewController getPath];
    NSLog(@"Received the path");
}

@end
