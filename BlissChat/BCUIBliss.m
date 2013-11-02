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
    CGAffineTransform transform = CGAffineTransformMakeScale(0.4f, 0.4f);
    CGPathRef smallPath = CGPathCreateCopyByTransformingPath(self.path.CGPath, &transform);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    
    CGContextSetFillColorWithColor(context, [[UIColor redColor] CGColor]);
    CGContextSetLineWidth(context, 4.0f);
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetLineJoin(context, kCGLineJoinRound);
    CGContextSetAllowsAntialiasing(context, YES);
    CGContextSetShouldAntialias(context, YES);
    CGContextSetMiterLimit(context, 2.0);
    
    CGContextAddPath(context, smallPath);
    CGContextStrokePath(context);
    
    CGContextRestoreGState(context);
    CGPathRelease(smallPath);
}

@end
