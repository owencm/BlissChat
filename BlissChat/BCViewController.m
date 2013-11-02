//
//  BCViewController.m
//  BlissChat
//
//  Created by Owen Campbell-Moore on 10/29/13.
//  Copyright (c) 2013 Owen Campbell-Moore. All rights reserved.
//

#import "BCViewController.h"
#import "Smooth_Line_ViewViewController.h"
#import "BCMessageCell.h"

@interface BCViewController ()

@end

@implementation BCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.view bringSubviewToFront:self.shadow];
    messages = [[NSMutableArray alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendPressed:(id)sender {
    CGPathRef path = [self.childViewControllers[0] getPath];
    [messages addObject:[UIBezierPath bezierPathWithCGPath:path]];
    [self.tableView reloadData];
}

- (IBAction)undoPressed:(id)sender {
    [self.childViewControllers[0] undo];
}




// Table Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [messages count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BCMessageCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MessageCell"];
    cell.path = [messages objectAtIndex:indexPath.row];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

@end
