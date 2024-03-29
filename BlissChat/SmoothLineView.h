//
//  SmoothLineView.h
//  Smooth Line View
//
//  Created by Levi Nunnink on 8/15/11.
//  Copyright 2011 culturezoo. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface SmoothLineView : UIView {
    NSMutableArray *pathHistory;
@private
    CGPoint currentPoint;
    CGPoint previousPoint1;
    CGPoint previousPoint2;
    CGFloat lineWidth;
    UIColor *lineColor;
    UIImage *curImage;
    NSMutableArray *transaction;
}

@property (nonatomic, retain) UIColor *lineColor;
@property (readwrite) CGFloat lineWidth;
@property (nonatomic, assign) CGMutablePathRef path; // Not sure what the stuff in brackets should be
@property NSMutableArray *pathHistory;

-(void) clear;


@end
