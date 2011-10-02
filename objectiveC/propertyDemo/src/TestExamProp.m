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
    
//    [bean setPropString2:@"piyo"];
    //  [bean setPropString3:@"fuga"]; //実装部ではnameという名前に変えたが、外部では無効
    
    
    // Beanから出してみる。
//    NSLog(@"... %@",[bean getStr2]); //アクセサの名称を変更。
    
    //    NSLog(@"... %@",bean.propString3); //ドット演算子でもとれる。
    
    
    [pool drain];
}
@end
