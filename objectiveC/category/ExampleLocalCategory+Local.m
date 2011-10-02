//
//  ExampleLocalCategory.m
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/17.
//  Copyright 2011 Private. All rights reserved.
//

#import "ExampleLocalCategory.h"
@interface ExampleLocalCategory(Local)
// Localという名のカテゴリでmethodA,methodBを宣言。
// methodA,methodBはヘッダで定義されていないが、ここで宣言されているので利用できる。
- (int) methodA:(int)arg;   
- (int) methodB:(int)arg;   
@end

@implementation ExampleLocalCategory
- (int) doSomething:(int)arg{
    return [self methodA:arg];
}
@end

@implementation ExampleLocalCategory(Local)
- (int) methodA:(int)arg {
    if(arg == 0) {
        return 0;
    } else {
       return [self methodB:arg];
    }
}

- (int) methodB:(int)arg {
    if(arg == 0 ) {
        return [self methodA:arg];
    } else {
        return 100;
    }
}
@end
