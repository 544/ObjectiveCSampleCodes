//
//  CameraExampleAppDelegate.h
//  CameraExample
//
//  Created by 塚越 雅斗 on 11/08/07.
//  Copyright 2011年 Private. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CameraExampleViewController;

@interface CameraExampleAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet CameraExampleViewController *viewController;

@end
