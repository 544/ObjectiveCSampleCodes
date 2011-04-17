//
//  NSString+PathComp.m
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/18.
//  Copyright 2011 Private. All rights reserved.
//

#import "NSString+PathComp.h"
#import <Foundation/NSPathUtilities.h>
#import <stdarg.h>
// 可変長引数を使うためにstdarg.hのインポートが必要

@implementation NSString(PathComp)
- (NSString *) stringByAppendingPathComponents:(NSString *) str, ... {
    
    va_list varglist;
    // 可変長引数をvarglistという名前で利用する。
    
    NSString *work, *comp;
    
    if (str == nil )
        return self;
    
    work = [self stringByAppendingPathComponent :str];

    va_start(varglist, str);
    // va_strartで可変長引数の利用を開始する。
    // 引数strの直後の引数から可変長引数を利用
    
    while ((comp = va_arg(varglist, NSString *)) != nil)  {
        // va_argで可変長リストを利用する。引数の分だけwhile文が回る
        work = [work stringByAppendingPathComponent:comp];
    }
    
    va_end(varglist);
    //可変長引数の利用を終了する。
    
    return work;
    
}

@end
