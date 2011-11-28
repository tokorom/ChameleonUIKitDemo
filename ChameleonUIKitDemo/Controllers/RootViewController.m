//
//  RootViewController.m
//
//  Created by ToKoRo on 2011-11-27.
//  Last Change: 2011-11-28.
//

#import "RootViewController.h"

@implementation RootViewController

- (void)loadView
{
  [super loadView];
  // 背景色設定
  self.view.backgroundColor = [UIColor whiteColor];
  // UIImageViewを試用
  UIImage* image = [UIImage imageNamed:@"mayuge_dog"];
  UIImageView* imageView = [[[UIImageView alloc] initWithImage:image] autorelease];
  imageView.frame = self.view.bounds;
  imageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
  imageView.contentMode = UIViewContentModeScaleAspectFit;
  [self.view addSubview:imageView];
  // ボタンを試用
  UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  [button setTitle:@"WAN!" forState:UIControlStateNormal];
  [button sizeToFit];
  button.center = self.view.center;
  button.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin |
                               UIViewAutoresizingFlexibleTopMargin |
                               UIViewAutoresizingFlexibleRightMargin |
                               UIViewAutoresizingFlexibleBottomMargin;
  [button addTarget:self
             action:@selector(buttonDidPush)
   forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:button];
}

- (IBAction)buttonDidPush {
  NSAlert* alert = [[[NSAlert alloc] init] autorelease];
  [alert setMessageText:@"わん！"];
  [alert addButtonWithTitle:@"OK"];
  [alert runModal];
}

@end
