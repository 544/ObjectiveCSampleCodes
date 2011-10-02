//
//  TestProtocol.m
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/24.
//  Copyright 2011 Private. All rights reserved.
//

#import "TestProtocol.h"
#import "RealArray.h"
#import "RealNumber.h"
#import "RealString.h"

@implementation TestProtocol
- (void) doit{
    
    id pool = [[NSAutoreleasePool alloc] init];
    
    NSMutableArray * array = [[NSMutableArray alloc] init];
    
    [array addRealNumber:@"1.3"];
    [array addRealNumber:@"2"];
    [array addRealNumber:@"0.2"];
    
    // NSMutableArrayの中身がすべてプロトコルを満たしているか判断
    BOOL boolean = YES;
    for (id e in array) {
        if (![e conformsToProtocol:@protocol(RealNumber)]) {
            boolean = NO;
        }
    }
    
    if (boolean) {
        NSLog(@"ArraysMember is RealNumberProtocol");
        [array sort];
    } else{
        NSLog(@"ArraysMember is not RealNumberProtocol");
    }
    
    for (id e in array) {
		NSLog(@">> %@", e);
	}
    
    NSLog(@"---------");
    // RealNumberプロトコルでないものを突っ込んでみる。
    NSNumber *num = [[NSNumber alloc] initWithDouble:1.9];
    [array addObject:num];
    
    //再検査
    boolean = YES;
    for (id e in array) {
        if (![e conformsToProtocol:@protocol(RealNumber)]) {
            boolean = NO;
        }
    }
    if (boolean) {
        NSLog(@"ArraysMember is RealNumberProtocol");
        [array sort];
    } else{
        NSLog(@"ArraysMember is not RealNumberProtocol");
    }
    
    for (id e in array) {
		NSLog(@">> %@", e);
	}

    [pool drain];
    // リファレンスカウンタだとdrain,GCだとrelease ...?
}
@end
