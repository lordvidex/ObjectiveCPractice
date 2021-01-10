//
//  Test.m
//  ObJCTut2
//
//  Created by Evans Owamoyo on 01.01.2021.
//

#import "Test.h"

@interface Test()
@end

@implementation Test

- (int)gcd:(int)first secondNumber:(int)second{
    while(second!=0){
        int temp = second;
        second = first%second;
        first = temp;
    }
    return first;
}
-(int) gcdWithRecur:(int)first secondNumber:(int) second{
    if(second==0)return first;
    return [self gcdWithRecur:second secondNumber:(first%second)];
}
-(int) checkCount{
    static int counter = 0;
    ++counter;
    return counter;
}
- (void)swap:(int *)x withNumber:(int *)y{
    int n = *x;
    *x = *y;
    *y = n;
}
@end
