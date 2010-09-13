//
//  glAssiPhoneAppDelegate.m
//  glAssiPhone
//
//  Created by Per-Olov Jernberg on 2008-11-02.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import "glAssiPhoneAppDelegate.h"
#import "EAGLView.h"

@implementation glAssiPhoneAppDelegate

@synthesize window;
@synthesize glView;

- (void)applicationDidFinishLaunching:(UIApplication *)application {

	glView.animationInterval = 1.0 / 60.0;
	[glView startAnimation];
}


- (void)applicationWillResignActive:(UIApplication *)application {
	glView.animationInterval = 1.0 / 5.0;
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
	glView.animationInterval = 1.0 / 60.0;
}

- (void)dealloc {
	[window release];
	[glView release];
	[super dealloc];
}

@end
