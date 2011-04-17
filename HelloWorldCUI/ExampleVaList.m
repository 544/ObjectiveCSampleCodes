// 可変長引数のサンプル
#import <stdarg.h>

@interface ExampleVaList : NSObject
- (void) doSomething:(NSString *) arg, ... NS_REQUIRES_NIL_TERMINATION;
@end

@implementation ExampleVaList
- (void) doSomething:(NSString *) arg, ... {
    va_list valgList;
    
    va_start(valgList, arg);
    
    NSString * val;
    
    while ((val = va_arg(valgList, NSString*)) != nil) {
        NSLog(val,0);
    }
    
    va_end(valgList);
}
@end
