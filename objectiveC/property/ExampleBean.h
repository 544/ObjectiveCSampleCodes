//
//  ExampleBean.h
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/24.
//  Copyright 2011 Private. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ExampleBean : NSObject {
    NSString *_str_retain;
    int _int_assign;

    NSString *_str_withAccesser;
    NSString *_str_nonatomic;
    
     NSMutableString *_mutableStr_retain;
     NSMutableString *_mutableStr_copy;

}

// reatain ... リファレンスカウンタでの管理
@property(retain) NSString *_str_retain;//retain/copy: オブジェクトを保持。
// retain だとリファレンスカウンタを加算。copyだとオブジェクトをコピー
@property(assign) int _int_assign;//assign: 値を代入。intはオブジェクトではないのでretain,copyは不可

// アクセッサを明示的に設定
@property(retain, getter = getStr, setter = setStr:) NSString *_str_withAccesser;

// noatmic だと非スレッドセーフ
@property(nonatomic, retain) NSString *_str_nonatomic;

// retainとcopyの違い
@property(retain) NSMutableString *_mutableStr_retain;
@property(copy) NSMutableString *_mutableStr_copy;

- (void)deco:(NSMutableString*)val;
@end
