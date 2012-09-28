//
//  CustomNavigationController.m
//  iOS6Rotation
//
//  Created by Thibaut Jarosz on 27/09/2012.
//  Copyright (c) 2012 Octiplex. All rights reserved.
//

#import "CustomNavigationController.h"

// Forward iOS 6 rotation calls to topViewController
@implementation CustomNavigationController

- (BOOL)shouldAutorotate
{
    // If second view is in landscape when poping navigation controller
    // visibleViewController class is "UISnapshotModalViewController"
    // This is a private class used by Apple during some transitions like
    // dismissing modal view or this particular case.
    NSLog(@"%s visibleViewController    = %@", __PRETTY_FUNCTION__, [self.visibleViewController class]);
    NSLog(@"%s topViewController        = %@", __PRETTY_FUNCTION__, [self.topViewController class]);
    
    // So, use topViewController instead of visibleViewController
    return [self.topViewController shouldAutorotate];
}

- (NSUInteger)supportedInterfaceOrientations
{
    return [self.topViewController supportedInterfaceOrientations];
}


// Useless: preferredInterfaceOrientationForPresentation is never called on navigationController.
// The view needs to be in full screen for this method to be called.

//- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
//{
//    return [self.topViewController preferredInterfaceOrientationForPresentation];
//}

@end
