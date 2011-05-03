//
//  MyViewerCtrl.m
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/30.
//  Copyright 2011 Private. All rights reserved.
//

#import "MyViewerCtrl.h"
#import "WinCtrl.h"
#import "MyInspector.h"

static NSString *AutoResizeKey = @"AutoResize";


@implementation MyViewerCtrl

- (void) setupMainMenu{
    // 各メニュー項目に要素を追加する。
    
}
- (void) openFile:(id)sender{
    NSOpenPanel *oPanel = [NSOpenPanel openPanel];
    [oPanel setAllowsMultipleSelection:YES];
    [oPanel setAllowedFileTypes:[NSImage imageFileTypes]];
    // オープンパネルを表示
    [oPanel beginWithCompletionHandler:^(NSInteger result) {
        if (result == NSFileHandlingPanelOKButton) {
            for (NSURL *aFile in [oPanel URLs])
                (void)[[WinCtrl alloc]init ];//TODO
        }
    }];
}
- (void) activeInspector:(id)sender{
    static Class inspecterClass = Nil;
    NSBundle *bundle;
    NSString *path;
    
    if (inspecterClass == Nil) {
        path = [[NSBundle mainBundle] pathForResource:@"Inspactor" ofType:@"bundle"];
        // メインバンドル内からローダブルバンドルを取得？
        if (( bundle = [NSBundle bundleWithPath:path]) == nil)
            return ; //ERROR!
        inspecterClass = [bundle classNamed:@"MyInspector"];
    }
    (void) [inspecterClass sharedInstance];
    
}

// メニューのチェックを切り替える
- (void) toggleAutoResize:(id)sender{
    // 現在の状態の否定
    BOOL newState = ([sender state] != NSOnState);
    // 自動縮小の管理
    [WinCtrl setAutoResize: newState];
    [sender setState:(newState ? NSOnState: NSOffState)];
    // ユーザデフォルトに書き込む
    [[NSUserDefaults standardUserDefaults] setBool:newState forKey:AutoResizeKey];
}

//-(void) applicationWillFinishL
@end
