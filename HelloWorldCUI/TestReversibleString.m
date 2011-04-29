//
//  TestReversibleString.m
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/29.
//  Copyright 2011 Private. All rights reserved.
//

#import "TestReversibleString.h"
#import "ReversibleString.h"


@implementation TestReversibleString
- (void) doit{
    
 
    char buf[100];
    id s,a,b;
    id pool = [[NSAutoreleasePool alloc] init];

//    NSString * hoge = @"hoge";
//    NSLog(@"ReversibleString...%s",[hoge UTF8String]);
    
//    scanf("%s",buf);
//    s = [NSString stringWithUTF8String:buf];
//    NSLog(@"input...%@",s);
    s = @"abcde";

    a = [[ReversibleString alloc] initWithString:s];
    NSLog(@"ReversibleString...%s",[a UTF8String]);
    
    b = [a reversedString];
    NSLog(@"Reversed...%s", [b UTF8String]);

    
    [pool release];
}
@end
