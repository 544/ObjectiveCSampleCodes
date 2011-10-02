//
//  main.m
//  property
//
//  Created by 塚越 雅斗 on 11/10/02.
//  Copyright 2011年 Private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Client.h"

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
    NSLog(@"property demo");
    [[Client alloc] doit];
    

    [pool drain];
    return 0;
}

