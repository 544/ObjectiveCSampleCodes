//
//  RealString.h
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/24.
//  Copyright 2011 Private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RealNumber.h"

@interface NSString (RealString)<RealNumber>
- (double) realValue;

@end
