//
//  MyViewerCtrl.h
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/30.
//  Copyright 2011 Private. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface MyViewerCtrl : NSObject {
    id autoResizeItem;
}

- (void) setupMainMenu;
- (void) openFile:(id)sender;
- (void) activeInspector:(id)sender;
- (void) toggleAutoResize:(id)sender;

@end
