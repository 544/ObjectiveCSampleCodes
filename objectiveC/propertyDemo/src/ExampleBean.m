//
//  ExampleBean.m
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/24.
//  Copyright 2011 Private. All rights reserved.
//

#import "ExampleBean.h"


@implementation ExampleBean

// synthesizeで勝手にアクセサができる.
@synthesize str_retain;
@synthesize int_assign;

// 明示的にアクセッサを宣言
- (NSString*)getStr
{
    return [NSString stringWithFormat:@"[get:%@]",str_withAccesser];
}
- (void)setStr:(NSString*)val
{
    [str_withAccesser release]; //明示的に解放
    str_withAccesser = [NSString stringWithFormat:@"<set:%@>",val];
}

//名前を変えることもできる。ただし、このファイル内のみで有効。
//@synthesize propString3 = name;

@end
