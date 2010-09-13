//
//  glAssiPhoneAppDelegate.h
//  glAssiPhone
//
//  Created by Per-Olov Jernberg on 2008-11-02.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EAGLView;

@interface glAssiPhoneAppDelegate : NSObject <UIApplicationDelegate> {
	IBOutlet UIWindow *window;
	IBOutlet EAGLView *glView;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) EAGLView *glView;

@end

