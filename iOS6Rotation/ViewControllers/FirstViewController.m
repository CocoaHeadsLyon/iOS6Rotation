//
//  FirstViewController.m
//  iOS6Rotation
//
//  Created by Thibaut Jarosz on 27/09/2012.
//  Copyright (c) 2012 Octiplex. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ModalViewController.h"

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"First view";
}

- (IBAction)pushView2:(UIButton *)sender
{
    [self.navigationController pushViewController:[SecondViewController new] animated:YES];
}

- (IBAction)showModal:(UIButton *)sender
{
    [self presentModalViewController:[ModalViewController new] animated:YES];
}


#pragma mark - Rotation management

// iOS 5
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return UIInterfaceOrientationIsPortrait(toInterfaceOrientation);
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
    return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskPortraitUpsideDown;
}

@end
