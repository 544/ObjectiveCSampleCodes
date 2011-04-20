//
//  Circle.m
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/21.
//  Copyright 2011 Private. All rights reserved.
//

#import "Circle.h"
#import <Foundation/NSString.h>
#import <math.h>
#import <stdio.h>

#define PI 3.14

@implementation Circle

- (void) setSize:(NSSize) size{
    double x = size.width;
    double y = size.height;
    radius = sqrt(x*x+y*y);
}
- (double) area{
    return radius * radius * PI;
}
- (NSString *)figureName{
    return @"Circle";
}
- (NSString *)stringOfSize{
    return [NSString stringWithFormat:@"radius=%.2f",radius];
}

@end
