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
    
    // 比較
    NSString *cmpStr1 = @"abc";
    NSString *cmpStr2 = @"ABC";
    
    NSComparisonResult cmpResult1 = [cmpStr1 compare:cmpStr2];
    
    NSLog(@"compareで比較 %@ compare %@ ... %ld" , cmpStr1, cmpStr2, cmpResult1);
    // compareの戻りはNSComparisonResultという列挙型で返される。(中身はlong)

    NSComparisonResult cmpResult2 = [cmpStr1 caseInsensitiveCompare:cmpStr2];
    NSLog(@"caseInsensitiveCompareで比較 %@ compare %@ ... %ld" , cmpStr1, cmpStr2, cmpResult2);
    // caseInsensitiveCompareは大文字小文字を考慮しない比較
    
    BOOL cmpResult3 = [cmpStr1 isEqualToString:@"abc"];
    NSLog(@"isEqualToStringで比較 %@ equals %@ ... %d" , cmpStr1, cmpStr2, cmpResult3);
    // BOOL は1:YES 0:NO
    
    BOOL cmpResult4 = [cmpStr1 hasPrefix:@"ab"];
    NSLog(@"hasPrefixで比較 %@ isStrartwith %@ ... %d" , cmpStr1, cmpStr2, cmpResult4);
    
    
//    BOOL cmpResult5 = [cmpStr1 localizedStandardCompare:cmpStr2];
  //???  

    
    NSLog(@" ---- NSString Example End ---- ");

}

@end
