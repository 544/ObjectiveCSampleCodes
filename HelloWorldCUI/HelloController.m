//
//  HelloController.m
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/15.
//  Copyright 2011 Private. All rights reserved.
//

#import "HelloController.h"
#import "HelloCell.h"
#import "HelloAction.h"

@implementation HelloController
- (void) initController {
    helloCell = [[HelloCell alloc] init];
    
    HelloAction *hello = [[HelloAction alloc] init];
    [helloCell setTarget:(id)hello];
    [helloCell setAction:@selector(sayHello)];
}

- (void) execEvent {
    [helloCell performEvent:helloCell];
}
@end
