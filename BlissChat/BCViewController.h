//
//  BCViewController.h
//  BlissChat
//
//  Created by Owen Campbell-Moore on 10/29/13.
//  Copyright (c) 2013 Owen Campbell-Moore. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Smooth_Line_ViewViewController.h"

@interface BCViewController : UIViewController {
    @private
    Smooth_Line_ViewViewController *inputViewController;
}

@property (weak, nonatomic) IBOutlet UIView *inputContainer;

- (IBAction)sendPressed:(id)sender;

@end
