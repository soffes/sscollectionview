//
//  CEAppDelegate.m
//  SSCollectionView Example
//
//  Created by Sam Soffes on 3/3/12.
//  Copyright (c) 2012 Synthetic. All rights reserved.
//

#import "CEAppDelegate.h"
#import "CERootViewController.h"

@implementation CEAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	
	CERootViewController *viewController = [[CERootViewController alloc] init];
	UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
	self.window.rootViewController = navigationController;
	
	[self.window makeKeyAndVisible];
	return YES;
}

@end
