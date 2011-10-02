//
//  ReversibleString.h
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/29.
//  Copyright 2011 Private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Foundation/NSMethodSignature.h>
#import <Foundation/NSInvocation.h>
#import <Foundation/NSString.h>

@interface ReversibleString : NSObject {
    NSString *content;
}

- (id) initWithString:(NSString *) str;
- (void) dealloc;
- (id)reversedString;
@end
