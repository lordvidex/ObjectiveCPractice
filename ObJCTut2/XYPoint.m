//
//  XYPoint.m
//  ObJCTut2
//
//  Created by Evans Owamoyo on 11.01.2021.
//

#import "XYPoint.h"

@implementation XYPoint


-(void) setXY:(int)x andY:(int)y{
    self.x = x;
    self.y = y;
}

+ (instancetype)initWithX:(double)x andY:(double)y{
    XYPoint* me = [XYPoint new];
    [me setXY:x andY:y];
    return me;
}
@end
