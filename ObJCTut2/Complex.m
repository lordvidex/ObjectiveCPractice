//
//  Complex.m
//  ObJCTut2
//
//  Created by Evans Owamoyo on 31.12.2020.
//

#import "Complex.h"

@implementation Complex{
    double real;
    double imaginary;
}
- (double)real{
    return real;
}
- (double)imaginary{
    return imaginary;
}

-(void)print{
    NSLog(@"%g + %gi",real,imaginary);
}
-(void)setReal:(double)x{
    real = x;
}
-(void)setImaginary:(double)y{
    imaginary = y;
}

@end
