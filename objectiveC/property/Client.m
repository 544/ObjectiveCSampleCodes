//
//  TestExamProp.m
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/24.
//  Copyright 2011 Private. All rights reserved.
//

#import "Client.h"
#import "ExampleBean.h"

@implementation Client
- (void) doit{
    id pool = [[NSAutoreleasePool alloc] init];
    
    ExampleBean *bean = [[ExampleBean alloc] init];
    
    // Beanにいろいろ突っ込んでみる。
    [bean set_int_assign:99];
    NSLog(@"int_assign... %d",[bean _int_assign]);
    
    [bean set_str_retain:@"hoge"];
    NSLog(@"str_retain... %@",[bean _str_retain]);
    // NSLog(@"str_retain... %@",bean._str_retain); // ドット演算子でも取得できる。
    
    // アクセッサを明示的に宣言
    [bean setStr:@"piyo"];
    NSLog(@"str_withAccesser...%@",[bean getStr]);
    
    [pool drain];
}

@end
