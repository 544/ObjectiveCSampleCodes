//
//  HelloCell.m
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/15.
//  Copyright 2011 Private. All rights reserved.
//
#import "HelloCell.h"


@implementation HelloCell : NSObject

- (void) setAction:(SEL)actSel{
    action = actSel;
}
- (void) setTarget:(id)obj{
    target = obj;
}
- (void) performEvent:(id)sender{
    (void)[target performSelector:action withObject:sender];
}
@end
