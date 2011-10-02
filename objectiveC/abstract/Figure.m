//
//  Figure.m
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/21.
//  Copyright 2011 Private. All rights reserved.
//

#import "Figure.h"
#import <Foundation/NSString.h>

@implementation Figure

- (void) setLocation:(NSPoint) point{
    location = point;
}
- (void) setSize:(NSSize) size{
    // doNothing
}
- (double) area{
    return 0.0;
    // 意味のない実装
}

- (NSString *)figureName{
    return nil;
}
- (NSString *)stringOfSize{
    return nil;
}
- (NSString *)description{
    return [NSString stringWithFormat:
            @"%@: location=(%.2f, %.2f) , area=%.2f",[self figureName],location.x,location.y, [self stringOfSize], [self area]];
}

@end
