//
//  Test.h
//  ObJCTut2
//
//  Created by Evans Owamoyo on 01.01.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Test : NSObject

-(int) gcd:(int)first secondNumber:(int)second;
- (int) gcdWithRecur:(int) first secondNumber:(int)second;
-(void) swap: (int*)x withNumber: (int *)y;
-(int) checkCount;
@end

NS_ASSUME_NONNULL_END
