//
//  Smooth_Line_ViewViewController.m
//  Smooth Line View
//
//  Created by Levi Nunnink on 8/10/11.
//  Copyright 2011 culturezoo. All rights reserved.
//

#import "Smooth_Line_ViewViewController.h"
#import "SmoothLineView.h"

@implementation Smooth_Line_ViewViewController

@synthesize smoothLineView;

- (void)viewDidLoad
{
    smoothLineView = [[SmoothLineView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview: smoothLineView];
}

- (CGPathRef) getPath
{
    CGPathRef oldPath = CGPathCreateCopy([smoothLineView path]);
    smoothLineView.path = CGPathCreateMutable();
    [smoothLineView redraw];
    return oldPath;
}

@end
