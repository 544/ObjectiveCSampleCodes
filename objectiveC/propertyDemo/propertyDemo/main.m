//
//  main.m
//  propertyDemo
//
//  Created by 塚越 雅斗 on 11/10/02.
//  Copyright 2011年 Private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestExamProp.h"

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
    NSLog(@"Hello, World!");
        [[[TestExamProp alloc] init] doit];

    [pool drain];
    return 0;
}

