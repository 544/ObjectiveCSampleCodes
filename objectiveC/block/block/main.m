//
//  main.m
//  block
//
//  Created by masato on 11/10/02.
//  Copyright 2011年 Private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Testblock1.h"

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
    NSLog(@"Hello, World!");
    
    [[Testblock1 alloc] doIt];

    
    [pool drain];
    return 0;
}

