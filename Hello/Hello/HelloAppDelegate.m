//
//  HelloAppDelegate.m
//  Hello
//
//  Created by nyuguest on 2/7/13.
//  Copyright (c) 2013 nyuguest. All rights reserved.
//

#import "HelloAppDelegate.h"
#import "View.h"

@implementation HelloAppDelegate
@synthesize window = _window;

- (BOOL) application: (UIApplication *) application didFinishLaunchingWithOptions: (NSDictionary *) launchOptions
{
	// Override point for customization after application launch.
    application.statusBarHidden = YES;
	UIScreen *screen = [UIScreen mainScreen];
	CGRect applicationFrame = screen.applicationFrame;
	CGRect bounds = screen.bounds;

	view = [[View alloc] initWithFrame: applicationFrame];
	self.window = [[UIWindow alloc] initWithFrame: bounds];

	//self.window.backgroundColor = [UIColor whiteColor];
	[self.window addSubview: view];
	[self.window makeKeyAndVisible];
	return YES;
}

- (void) applicationWillResignActive: (UIApplication *) application


{
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    
    NSLog(@"applicationWillResignActive:");
}

- (void) applicationDidEnterBackground: (UIApplication *) application
{
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void) applicationWillEnterForeground: (UIApplication *) application
{
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    
    //Trigger another call to drawRect:.
	[view setNeedsDisplay];
    
}

- (void) applicationDidBecomeActive: (UIApplication *) application
{
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void) applicationWillTerminate: (UIApplication *) application
{
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
