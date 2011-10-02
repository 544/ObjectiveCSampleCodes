//
//  ExampleBean.h
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/24.
//  Copyright 2011 Private. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ExampleBean : NSObject {
    NSString *str_retain;
    int int_assign;

    NSString *str_withAccesser;
}

// reatain ... リファレンスカウンタでの管理
@property(retain) NSString *str_retain;//retain/copy: オブジェクトを保持。
// retain だとリファレンスカウンタを加算。copyだとオブジェクトをコピー
@property(assign) int int_assign;//assign: 値を代入。intはオブジェクトではないのでretain,copyは不可

// アクセッサを明示的に設定
@property(retain, getter = getStr, setter = setStr:) NSString *str_withAccesser;

@end