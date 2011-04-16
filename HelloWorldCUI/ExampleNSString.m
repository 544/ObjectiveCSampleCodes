//
//  ExampleNSString.m
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/16.
//  Copyright 2011 Private. All rights reserved.
//

#import "ExampleNSString.h"


@implementation ExampleNSString

- (void) HelloNSString {
    NSLog(@" ---- NSString Example Start ---- ");
    
    // 初期化
    NSString *empStr = [[NSString alloc] init];
    NSLog(@"initで生成(空文字)[%@]" , empStr);
    
    NSString *str1 = [[NSString alloc] initWithString:@"init"];
    NSLog(@"initwithStringで生成(引数で渡した文字列で生成)[%@]" , str1);
    
    NSString *str2 = [[NSString alloc] initWithFormat:@"init%d",2];
    NSLog(@"initWithFormatで生成(引数で渡した文字列で生成)[%@]" , str2);

    
    NSLog(@" ---- NSString Example End ---- ");

}

@end
