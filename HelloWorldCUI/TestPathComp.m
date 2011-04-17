//
//  TestPathComp.m
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/18.
//  Copyright 2011 Private. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <Foundation/NSPathUtilities.h>
#import <Foundation/NSAutoreleasePool.h>

#import "TestPathComp.h"
#import "NSString+PathComp.h"

@implementation TestPathComp
- (void) execTest{

    NSString * pict = @"Picture";
    NSString *homeDir, *s;
    
    id pool = [[NSAutoreleasePool alloc] init]; //??
    
    homeDir = NSHomeDirectory();
    
    s = [homeDir stringByAppendingPathComponent:pict];
    NSLog(s,0);
    
    s = [homeDir stringByAppendingPathComponents:pict , @"tmp",  nil];
    NSLog(s,0);
    
    [pool drain];
    return;
    
}
@end
