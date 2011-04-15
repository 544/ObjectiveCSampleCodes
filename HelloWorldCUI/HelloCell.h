//
//  HelloCell.h
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/15.
//  Copyright 2011 Private. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface HelloCell : NSObject {
    SEL action;
    id  target;

}
- (void) setAction:(SEL)actSel;
- (void) setTarget:(id)obj;
- (void) performEvent:(id)sender;


@end
