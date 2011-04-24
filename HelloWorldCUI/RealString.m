//
//  RealString.m
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/24.
//  Copyright 2011 Private. All rights reserved.
//

#import "RealString.h"

@implementation NSString (RealString)
- (double) realValue{
    return [self doubleValue];
}
@end
