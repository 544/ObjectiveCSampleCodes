//
//  HelloController.h
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/15.
//  Copyright 2011 Private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HelloCell.h"


@interface HelloController : NSObject {
    HelloCell *helloCell;    
}

- (void) initController;
- (void) execEvent;
@end
