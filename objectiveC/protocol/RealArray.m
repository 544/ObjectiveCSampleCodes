//
//  RealArray.m
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/24.
//  Copyright 2011 Private. All rights reserved.
//

#import "RealArray.h"


@implementation NSMutableArray (RealArray) 
- (void)addRealNumber:(id<RealNumber>) number{
    [self addObject:number];
}

static NSInteger compareReal(id <RealNumber> a, id <RealNumber> b, void *_){
    double v = [a realValue] - [b realValue];
    
    if (v > 0.0)
        return NSOrderedDescending;
    if (v < 0.0)
        return NSOrderedAscending;
    
    return NSOrderedSame;
}    
- (void)sort{
    [self sortUsingFunction:compareReal context:0];
}

@end
