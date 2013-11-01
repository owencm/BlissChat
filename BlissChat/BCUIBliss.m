//
//  BCUIBliss.m
//  BlissChat
//
//  Created by Owen Campbell-Moore on 01/11/2013.
//  Copyright (c) 2013 Owen Campbell-Moore. All rights reserved.
//

#import "BCUIBliss.h"

@implementation BCUIBliss

// NOT CALLED!
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
    [[UIColor redColor] setStroke];
    
    UIBezierPath *smallPath = [[UIBezierPath alloc] init];
    CGAffineTransform transform = CGAffineTransformMakeScale(0.4f, 0.4f);
    CGPathRef intermediatePath = CGPathCreateCopyByTransformingPath(self.path.CGPath,
                                                                    &transform);
    smallPath.CGPath = intermediatePath;
    CGPathRelease(intermediatePath);
    
    [smallPath stroke];
}

@end
