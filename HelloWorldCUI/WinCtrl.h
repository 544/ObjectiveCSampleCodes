//
//  WinCtrl.h
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/30.
//  Copyright 2011 Private. All rights reserved.
//

#import <Cocoa/Cocoa.h>

extern NSString *ShrinkAllNotification;
extern NSString *SizeDidChangeNotification;

@interface WinCtrl : NSObject <NSWindowDelegate> {
    NSString *filename;
    id docImage;
    NSSize originalSize;
    NSWindow *window;
    NSUndoManager *undoManager;
    double mag;
}

+(void) initialize;
+(BOOL) autoResize;
+(void) setAutoResize:(BOOL)flag;
-(id)initWithURL:(NSURL *) aFile;
-(NSString*) attributesOfImage;
-(void)shrink:(id)sender;

@end
