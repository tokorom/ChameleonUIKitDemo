//
//  AppDelegate.h
//  ChameleonUIKitDemo
//
//  Created by Yuta Tokoro on 11/27/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class ChameleonAppDelegate;

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (retain) IBOutlet UIKitView* chameleonView; 
@property (retain) ChameleonAppDelegate* chameleonApp; 

@end
