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

//getter methods
-(double) real;
-(double) imaginary;
-(void) print;

@end

NS_ASSUME_NONNULL_END
