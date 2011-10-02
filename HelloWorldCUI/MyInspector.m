//
//  MyInspector.m
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/30.
//  Copyright 2011 Private. All rights reserved.
//

#import "MyInspector.h"
#import "WinCtrl.h"

#define PanelWidthDef   250
#define PanelHeightDef  200
#define BtnWidth        64
#define BtnHeight       32
#define Margine         10


@implementation MyInspector

static id sharedInstance = nil;

+(id)sharedInstance{
    if (sharedInstance == nil)
        sharedInstance = [[self alloc] init];
    [sharedInstance activate];
    return sharedInstance;
    
}

-(void) panelSetting{
    NSButton *button[2];
    NSBundle *bundle;
    NSString *localStr;
    NSRect rect,btrect;
    float wid, hgt;
    int i;
    
    bundle = [NSBundle bundleForClass:[self class]];
    rect = NSMakeRect(300, 300, PanelWidthDef, PanelHeightDef);
    panel = [[NSPanel alloc] initWithContentRect:rect styleMask:(NSTitledWindowMask| NSClosableWindowMask| NSResizableWindowMask) backing:NSBackingStoreBuffered defer:YES];
    [panel setReleasedWhenClosed:NO];
    [panel setMinSize:NSMakeSize(PanelWidthDef, PanelHeightDef)];
    [panel setFrameAutosaveName:@"Inspector Panel"];
    
    localStr = [bundle localizedStringForKey:@"Inspector" value:@"" table:nil];
    
}

-(id)init{

}
-(void)activate{
    
}
-(void)showMain:(NSNotification*) aNotification{
    
}
-(void)windowClosed:(NSNotification*) aNotification{
    
}
-(void)shrinkAll:(id)sender{
    
}


@end
