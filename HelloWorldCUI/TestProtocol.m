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
    NSMutableArray * array = [[NSMutableArray alloc] init];
    
    [array addRealNumber:@"1.3"];
    [array addRealNumber:@"2"];
    [array addRealNumber:@"0.2"];

    if ([array conformsToProtocol:@protocol(RealNumber)]) {
        NSLog(@"isRealNumberProtocol");
        [array sort];
    } else
        NSLog(@"isNotRealNumberProtocol");
    
    for (id e in array) {
		NSLog(@">> %@", e);
	}
    

//    NSMutableArray *array2 = [[NSMutableArray alloc] init];
//
//    [array2 addRealNumber:[@"1.3" realValue]];
//    [array2 addRealNumber:[@"2" realValue]];
//    [array2 addRealNumber:[@"0.2" realValue]];
//
//    if ([array2 conformsToProtocol:@protocol(RealNumber)]) {
//        NSLog(@"isRealNumberProtocol");
//        [array2 sort];
//    } else
//        NSLog(@"isNotRealNumberProtocol");
//    
//    for (id e in array2) {
//		NSLog(@">> %@", e);
//	}


}
@end
