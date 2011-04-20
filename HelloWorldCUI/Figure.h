//
//  Figure.h
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/21.
//  Copyright 2011 Private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Foundation/NSGeometry.h>

@class NSString;


@interface Figure : NSObject {
    NSPoint location;
}

- (void) setLocation:(NSPoint) point;
- (void) setSize:(NSSize) size;
- (double) area;

- (NSString *)figureName;
- (NSString *)stringOfSize;
- (NSString *)description;
@end
