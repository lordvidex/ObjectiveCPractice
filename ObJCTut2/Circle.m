//
//  Circle.m
//  ObJCTut2
//
//  Created by Evans Owamoyo on 11.01.2021.
//

#import "Circle.h"

@implementation Circle

@synthesize radius;

- (double)getArea{
    return M_PI*radius*radius;
}

- (double)getPerimeter{
    return 2*M_PI*radius;
}

@end
