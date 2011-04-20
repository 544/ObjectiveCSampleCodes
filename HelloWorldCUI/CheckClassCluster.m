//
//  CheckClassCluster.m
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/21.
//  Copyright 2011 Private. All rights reserved.
//

#import "CheckClassCluster.h"
#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSPathUtilities.h>

@implementation CheckClassCluster

static void printClass(NSString *obj) {
    NSLog(@"Class = %s, Member = %s, Kind=%s",
           [NSStringFromClass([obj class]) UTF8String],
           [obj isMemberOfClass:[NSString class]] ? "YES" : "NO" ,
           [obj isKindOfClass:[NSString class]] ? "YES": "NO"
           );
}

-(void) check {

    NSString *ss = @"static string";
    id pool = [[NSAutoreleasePool alloc] init];

    printClass(ss);
    printClass([ss stringByAppendingString:@"hoge"]);
    printClass([NSString stringWithUTF8String:"fuga"]);
    printClass(NSHomeDirectory());
    
    [pool release];
}

@end
