//
//  AppDelegate.m
//  ChameleonUIKitDemo
//
//  Created by Yuta Tokoro on 11/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "ChameleonAppDelegate.h"

@implementation AppDelegate

@synthesize window = window_;
@synthesize chameleonView = chameleonView_;

- (void)dealloc
{
  [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
  // Insert code here to initialize your application
  ChameleonAppDelegate* chameleonApp = [ChameleonAppDelegate new];
  [self.chameleonView launchApplicationWithDelegate:chameleonApp afterDelay:1];
}

@end
