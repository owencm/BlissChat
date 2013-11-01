//
//  BCMessageCell.m
//  BlissChat
//
//  Created by Owen Campbell-Moore on 01/11/2013.
//  Copyright (c) 2013 Owen Campbell-Moore. All rights reserved.
//

#import "BCMessageCell.h"
#import "BCUIBliss.h"

@implementation BCMessageCell

@synthesize path = _path;

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        
    }
    return self;
}

- (void)setPath:(UIBezierPath *)path {
    _path = path;
    self.blissView.path = path;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
