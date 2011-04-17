//
//  NSString+PathComp.h
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/18.
//  Copyright 2011 Private. All rights reserved.
//

#import <Foundation/NSString.h>
// NSString を拡張するのでNSStringのヘッダファイルをインクルードしておく必要がある。

@interface NSString(PathComp) 
// NSStringと同名のインターフェースを、PathCompカテゴリで作成する。

- (NSString *) stringByAppendingPathComponents:(NSString *) str, ... NS_REQUIRES_NIL_TERMINATION;
// 可変長引数。
// NS_REQUIRES_NIL_TERMINATIONマクロは、最後にnilがくるまでの可変な引数を受けることを監視するマクロ
// 上記メソッド利用時に末尾にnilを指定せずに可変長引数を利用するとコンパイルエラーになる。
@end
