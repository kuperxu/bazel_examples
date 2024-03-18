#import <Foundation/Foundation.h>
#import "app/SampleIntentObjc.h"

@interface ObjcLib: NSObject
@end

@implementation ObjcLib
- (void)test:(SampleIntentIntent *)intent {
  NSLog(@"%@", intent);
}
@end

int main(int argc, char **argv) {
  return 0;
}
