//
//  HelloWorld.m
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/13.
//  Copyright 2011 Private. All rights reserved.
//

#import "HelloWorld.h"
#import "HelloController.h"
#import "ExampleNSString.h"
#import "ExampleLocalCategory.h"

#import "TestPathComp.h"
#import "TestNSArrayRandom.h"
#import "CheckClassCluster.h"

@implementation HelloWorld

- (void) hello{
    printf("Hello World.\n");
}

@end

int main(int argc, char **argv){
//    id obj = [HelloWorld alloc];
//    [obj hello];

//    HelloController *con = [[HelloController alloc]init] ;
//    [con initController];
//    [con execEvent];

//    [[[ExampleNSString alloc] init] HelloNSString];

//    int a = [[[ExampleLocalCategory alloc] init] doSomething:10];
//    NSLog(@"%d",a);

//    [[[TestPathComp alloc] init] execTest];
    
//    [[[TestNSArrayRandom alloc] init] execTest];
    
    [[[CheckClassCluster alloc] init] check];
    
    return 0;
}
