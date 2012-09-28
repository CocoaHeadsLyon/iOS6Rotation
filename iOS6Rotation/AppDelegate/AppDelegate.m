//
//  AppDelegate.m
//  iOS6Rotation
//
//  Created by Thibaut Jarosz on 27/09/2012.
//  Copyright (c) 2012 Octiplex. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "CustomNavigationController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    self.window.rootViewController = [[CustomNavigationController alloc] initWithRootViewController:[FirstViewController new]];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
