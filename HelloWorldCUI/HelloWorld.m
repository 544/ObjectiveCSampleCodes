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
#import "TestProtocol.h"
#import "TestExamProp.h"
#import "Testblock1.h"
#import "TestReversibleString.h"
#import <Cocoa/Cocoa.h>

@implementation HelloWorld

- (void) hello{
    printf("Hello World.\n");
}

@end

int main(int argc, char **argv){
    
    id pool = [[NSAutoreleasePool alloc] init];
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
    
//    [[[CheckClassCluster alloc] init] check];
  
//    [[[TestProtocol alloc] init] doit];
    
//    [[[TestExamProp alloc] init] doit];
    
    [[[Testblock1 alloc] init] doIt];
    
//    [[[TestReversibleString alloc] init] doit];
    
    [pool drain];
    return 0;
}
