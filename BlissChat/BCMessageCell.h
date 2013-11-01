//
//  BCMessageCell.h
//  BlissChat
//
//  Created by Owen Campbell-Moore on 01/11/2013.
//  Copyright (c) 2013 Owen Campbell-Moore. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BCUIBliss.h"

@interface BCMessageCell : UITableViewCell {
    UIBezierPath *_path;
}

@property (weak, nonatomic) IBOutlet BCUIBliss *blissView;
@property (nonatomic) UIBezierPath *path;

@end
