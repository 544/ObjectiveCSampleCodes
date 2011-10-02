//
//  ExampleBean.h
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/24.
//  Copyright 2011 Private. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ExampleBean : NSObject {
    NSString *propString;
    int propInt;
//    NSString *propStringReadOnly;
    NSString *propString2;
    NSString *propString3;
}

@property(retain) NSString *propString;//retain/copy: オブジェクトを保持。
// retain だとリファレンスカウンタを加算。copyだとオブジェクトをコピー
@property(assign) int propInt;//assign: 値を代入。intはオブジェクトではないのでretain,copyは不可
@property(getter = getStr2) NSString *propString2;
@property NSString *propString3;

//@property(readonly) NSString *propStringReadOnly;

@end
