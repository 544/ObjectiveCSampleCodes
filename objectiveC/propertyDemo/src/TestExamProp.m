//
//  TestExamProp.m
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/24.
//  Copyright 2011 Private. All rights reserved.
//

#import "TestExamProp.h"
#import "ExampleBean.h"

@implementation TestExamProp
- (void) doit{
    id pool = [[NSAutoreleasePool alloc] init];
    
    ExampleBean *bean = [[ExampleBean alloc] init];
    
    // Beanにいろいろ突っ込んでみる。
    [bean setInt_assign:99];
    NSLog(@"int_assign... %d",[bean int_assign]);
    
    [bean setStr_retain:@"hoge"];
    NSLog(@"str_retain... %@",[bean str_retain]);
    // NSLog(@"str_retain... %@",bean.str_retain); // ドット演算子でも取得できる。
    
    // アクセッサを明示的に宣言
    [bean setStr:@"piyo"];
    NSLog(@"str_withAccesser...%@",[bean getStr]);
    

    
    [pool drain];
}
@end
