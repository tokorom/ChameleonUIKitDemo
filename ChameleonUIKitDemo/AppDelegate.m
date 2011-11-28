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

@synthesize chameleonView = chameleonView_;
@synthesize chameleonApp = chameleonApp_;

- (void)dealloc
{
  self.chameleonView = nil;
  self.chameleonApp = nil;
  [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
  // Insert code here to initialize your application
  self.chameleonApp = [[[ChameleonAppDelegate alloc] init] autorelease];
  [self.chameleonView launchApplicationWithDelegate:self.chameleonApp afterDelay:1];
}

@end
