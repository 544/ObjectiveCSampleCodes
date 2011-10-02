//
//  AppDelegate_iPhone.h
//  HelloWorld
//
//  Created by 塚越 雅斗 on 11/03/06.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

// AppDelegeteの宣言
@interface AppDelegate_iPhone : NSObject <UIApplicationDelegate> {
    UIWindow * _window;
	UIViewController * _viewCtl;
}

// プロパティ宣言
@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

