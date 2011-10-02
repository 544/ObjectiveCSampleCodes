//
//  MyInspector.h
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/30.
//  Copyright 2011 Private. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MyInspector : NSObject <NSWindowDelegate>{
    
    NSPanel *panel;
    NSTextField *text;
    BOOL isClosed;
}

+(id)sharedInstance;
-(id)init;
-(void)activate;
-(void)showMain:(NSNotification*) aNotification;
-(void)windowClosed:(NSNotification*) aNotification;
-(void)shrinkAll:(id)sender;

@end
