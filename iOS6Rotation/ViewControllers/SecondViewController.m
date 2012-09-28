//
//  SecondViewController.m
//  iOS6Rotation
//
//  Created by Thibaut Jarosz on 27/09/2012.
//  Copyright (c) 2012 Octiplex. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Second view";
}


#pragma mark - Rotation management

// iOS 5
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return YES;
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
    return UIInterfaceOrientationMaskAll;
}

@end
