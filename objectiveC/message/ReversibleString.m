//
//  ReversibleString.m
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/29.
//  Copyright 2011 Private. All rights reserved.
//

#import "ReversibleString.h"
#import <Foundation/NSString.h>
#import <stdlib.h>
#import <stdio.h>

@implementation ReversibleString

- (id) initWithString:(NSString *) str{
    if ((self = [super init]) != nil) {
        content = [str retain];
    }
    return self;
}
- (void) dealloc{
    [content release];
    [super dealloc];
    
}
- (id)reversedString{
    unichar *buf;
    int length, i, j, tmp;
    id reversed;
    
    if (( length = [content length]) <= 0 )
        return @"";
    
    buf = (unichar *) malloc(sizeof(unichar) * length);
    [content getCharacters:buf range:NSMakeRange(0, length)];
    
    for ( i=0,j = length-1; i<j; i++,j--) {
        tmp = buf[i],buf[i] = buf[j], buf[j] = tmp;
    }
    reversed = [NSString stringWithCharacters:buf length:length];
    free((void *) buf);
    return reversed;
}

// この辺がメッセージ伝達？
-(void) forwardInvocation:(NSInvocation *)anInvocation{
    SEL sel = [anInvocation selector];
    if ([content respondsToSelector:sel]) //contentがメッセージを受けられれば
        [anInvocation invokeWithTarget:content]; // contentにメッセージを渡す。
    else
        [super forwardInvocation:anInvocation];
}

-(BOOL)respondsToSelector:(SEL)aSelector{
    if ([super respondsToSelector:aSelector])
        return YES;
    if([self methodForSelector:aSelector])
        return YES;
    if([content respondsToSelector:aSelector])
        return YES;
    return NO;
}

- (NSMethodSignature *) methodSignatureForSelector:(SEL)aSelector{
    if([super respondsToSelector:aSelector])
        return [super methodSignatureForSelector:aSelector];
    return [content methodSignatureForSelector:aSelector];
}

@end