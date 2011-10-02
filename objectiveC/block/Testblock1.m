//
//  Testblock1.m
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/24.
//  Copyright 2011 Private. All rights reserved.
//

#import "Testblock1.h"
#include <stdio.h>



@implementation Testblock1
void myFanc(int m, void (^b)(void)){
    NSLog(@"in myFanc...%d",m);
    b();
}

int glob = 999; // クローバル変数

- (void) doIt {
    void (^block)(void);
    
    static int stat = 99; // クラス変数
    int local = 9; // ローカル変数
    
    block = ^{
        NSLog(@"in block ...%d %d %d",glob,stat,local);
    };
    
    myFanc(1, block);
    
    glob = 888;
    stat = 88;
    local = 8;
    myFanc(2, block); //ローカル変数が変更されていない。

    
    block = ^{
        NSLog(@"in block ...%d %d %d",glob,stat,local);
    };
    myFanc(3, block); //ブロックを再定義したタイミングでの変数が有効になってる。
}
@end
