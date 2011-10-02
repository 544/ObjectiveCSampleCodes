//
//  AppDelegate_iPad.m
//  HelloWorld
//
//  Created by 塚越 雅斗 on 11/03/06.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate_iPad.h"
#import "HelloWorld.h"

@implementation AppDelegate_iPad

@synthesize window = _window;


#pragma mark -
#pragma mark Application lifecycle
// 起動完了後に呼ばれる。
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
    UIView* view=[[HelloWorld alloc]
				  initWithFrame:CGRectMake(0, 20, 728, 1004)];
	
	[_window addSubview:view];
	[view release];
	
	// ウインドウ生成
	
	[_window makeKeyAndVisible];
	
    return YES;
}

// メモリの解放
- (void)dealloc {
    [_window release];
    [super dealloc];
}

@end
