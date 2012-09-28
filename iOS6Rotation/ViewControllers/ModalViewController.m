//
//  ModalViewController.m
//  iOS6Rotation
//
//  Created by Thibaut Jarosz on 28/09/2012.
//  Copyright (c) 2012 Octiplex. All rights reserved.
//

#import "ModalViewController.h"

@implementation ModalViewController

- (IBAction)dismiss:(UIButton *)sender
{
    [self dismissModalViewControllerAnimated:YES];
}


#pragma mark - Rotation management

// iOS 5
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return UIInterfaceOrientationIsLandscape(toInterfaceOrientation) || toInterfaceOrientation == UIInterfaceOrientationPortrait;
}


// iOS 6
- (BOOL)shouldAutorotate
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    // All supported Interface Orientations need to be in Info.plist
    NSLog(@"%s", __PRETTY_FUNCTION__);
    return UIInterfaceOrientationMaskAllButUpsideDown;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    // When displayed, the view is shown in landscapeLeft. But it can be rotated.
    return UIInterfaceOrientationLandscapeLeft;
}

@end
