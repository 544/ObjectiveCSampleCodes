//
//  HelloWorld.m
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/13.
//  Copyright 2011 Private. All rights reserved.
//

#import "HelloWorld.h"


@implementation HelloWorld

- (void) hello{
    printf("Hello World.\n");
}

@end

int main(int argc, char **argv){
    id obj = [HelloWorld alloc];
    [obj hello];
    
    return 0;
}
