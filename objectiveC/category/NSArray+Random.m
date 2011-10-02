//
//  NSArray+Random.m
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/18.
//  Copyright 2011 Private. All rights reserved.
//

#import "NSArray+Random.h"
#import <objc/runtime.h>


@implementation NSArray (Random)

static char prevKey;
static int getRand(void) {
    static unsigned long rnd =100; //乱数の種(変更可)
    rnd = rnd * 1103515245UL + 12345;
    return (int) ( (rnd >> 16) & 0x7ffff);
}

-(id) anyOne {
    id item;
    
    NSUInteger count = [self count];
    
    if (count == 0) return nil;
    if (count == 1) return [self lastObject];
    
    id prev = objc_getAssociatedObject(self, &prevKey);
    // 連想参照を使って、prevKeyをこのインスタンスに記憶させる。
    // 連想参照を初めて使う場合にはnil
    NSUInteger index = getRand() % count;
    item = [self objectAtIndex:index];
    if (item == prev) {
        if (++index >= count) index = 0;
        
        item = [self objectAtIndex:index];
    }
    return item;
}
@end
