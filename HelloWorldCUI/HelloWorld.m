//
//  HelloWorld.m
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/13.
//  Copyright 2011 Private. All rights reserved.
//

#import "HelloWorld.h"
#import "HelloController.h"

@implementation HelloWorld

- (void) hello{
    printf("Hello World.\n");
}

@end

int main(int argc, char **argv){
//    id obj = [HelloWorld alloc];
//    [obj hello];

    HelloController *con = [[HelloController alloc]init] ;
    [con initController];
    [con execEvent];
    return 0;
}
