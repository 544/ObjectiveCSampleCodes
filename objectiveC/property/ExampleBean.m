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
@synthesize _str_retain;
@synthesize _int_assign;

// 明示的にアクセッサを宣言
- (NSString*)getStr
{
    return [NSString stringWithFormat:@"[get:%@]",_str_withAccesser];
}
- (void)setStr:(NSString*)val
{
    [_str_withAccesser release]; //明示的に解放
    _str_withAccesser = [NSString stringWithFormat:@"<set:%@>",val];
}

@synthesize _str_nonatomic;

@synthesize _mutableStr_retain;
@synthesize _mutableStr_copy;

//名前を変えることもできる。ただし、このファイル内のみで有効。
//@synthesize propString3 = name;


@end
