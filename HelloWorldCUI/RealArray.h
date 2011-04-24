//
//  RealArray.h
//  HelloWorldCUI
//
//  Created by MasatoTsukagoshi on 11/04/24.
//  Copyright 2011 Private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RealNumber.h"

@interface NSMutableArray (RealArray)
- (void)addRealNumber:(id<RealNumber>) number;
- (void)sort;
@end
