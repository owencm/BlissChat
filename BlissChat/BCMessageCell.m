//
//  BCMessageCell.m
//  BlissChat
//
//  Created by Owen Campbell-Moore on 01/11/2013.
//  Copyright (c) 2013 Owen Campbell-Moore. All rights reserved.
//

#import "BCMessageCell.h"

@implementation BCMessageCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
