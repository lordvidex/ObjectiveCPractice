//
//  Complex.h
//  ObJCTut2
//
//  Created by Evans Owamoyo on 31.12.2020.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Complex : NSObject

//setters methods
- (void) setReal:(double)x;
- (void) setImaginary:(double)y;
- (void) setReal:(double)a andImaginary:(double)b;

//getter methods
-(double) real;
-(double) imaginary;

// additional methods
- (Complex *) add:(Complex *)a;
-(void) print;
@end

NS_ASSUME_NONNULL_END
