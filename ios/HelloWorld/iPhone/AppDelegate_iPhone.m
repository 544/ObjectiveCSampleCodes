//
//  AppDelegate_iPhone.m
//  HelloWorld
//
//  Created by 塚越 雅斗 on 11/03/06.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate_iPhone.h"
// App用のヘッダ
#import "HelloWorld.h"
#import "HelloWorld2.h"
#import "helloWorld3.h"

@implementation AppDelegate_iPhone

@synthesize window=_window;


#pragma mark -
#pragma mark Application lifecycle

// 起動完了後に呼ばれる。
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
	// ThisCode is HelloWorld ver 1
//    UIView* view=[[HelloWorld alloc]
//				  initWithFrame:CGRectMake(0, 20, 728, 1004)];
//	
//	[_window addSubview:view];
//	[view release];

	// This Code is HelloWorld ver 2
//	_viewCtl = [[HelloWorld2 alloc] init];
//	[_viewCtl.view setFrame:CGRectMake(0, 20, 320, 460)];
//	[_window addSubview:_viewCtl.view];

	_viewCtl = [[helloWorld3 alloc] init];
	[_viewCtl.view setFrame:CGRectMake(0, 20, 320, 460)];
	[_window addSubview:_viewCtl.view];
	
	
	// ウインドウ生成
	
	[_window makeKeyAndVisible];
	
    return YES;
}

// メモリの解放
- (void)dealloc {
	[_viewCtl release];
    [_window release];
    [super dealloc];
}

@end
