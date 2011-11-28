//
//  ChameleonAppDelegate.m
//
//  Created by ToKoRo on 2011-11-27.
//  Last Change: 2011-11-28.
//

#import "ChameleonAppDelegate.h"
#import "RootViewController.h"

@implementation ChameleonAppDelegate

@synthesize window = window_;
@synthesize rootViewController = rootViewController_;

- (void)dealloc
{
  self.window = nil;
  self.rootViewController = nil;
  [super dealloc];
}

- (BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions
{
  self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
  // Override point for customization after application launch.
  self.window.backgroundColor = [UIColor whiteColor];
  self.window.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
  self.rootViewController = [[[RootViewController alloc] init] autorelease];
  self.rootViewController.view.frame = self.window.bounds;
  self.rootViewController.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
  [self.window addSubview:self.rootViewController.view];
  [self.window makeKeyAndVisible];
  return YES;
}

- (void)applicationWillResignActive:(UIApplication*)application
{
}

- (void)applicationDidEnterBackground:(UIApplication*)application
{
}

- (void)applicationWillEnterForeground:(UIApplication*)application
{
}

- (void)applicationDidBecomeActive:(UIApplication*)application
{
}

- (void)applicationWillTerminate:(UIApplication*)application
{
}

@end
