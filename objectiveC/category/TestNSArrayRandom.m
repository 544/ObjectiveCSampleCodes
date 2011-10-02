//
//  TestNSArrayRandom.m
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/18.
//  Copyright 2011 Private. All rights reserved.
//

#import "TestNSArrayRandom.h"
#import <Foundation/NSAutoreleasePool.h>
#import "NSArray+Random.h"


@implementation TestNSArrayRandom
- (void)execTest{
    
    id pool = [[NSAutoreleasePool alloc] init];

    id array1 = [NSArray arrayWithObjects:@"A", @"B", @"C",@"D",@"E", nil];
    
    
    NSLog((NSString *)[array1 anyOne],1);
    NSLog((NSString *)[array1 anyOne],1);
    NSLog((NSString *)[array1 anyOne],1);
    
    [pool drain];
}
@end
