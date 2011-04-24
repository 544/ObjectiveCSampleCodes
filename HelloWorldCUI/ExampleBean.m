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
@synthesize propString;
@synthesize propInt;
@synthesize propString2;

//名前を変えることもできる。ただし、このファイル内のみで有効。
@synthesize propString3 = name;

@end
