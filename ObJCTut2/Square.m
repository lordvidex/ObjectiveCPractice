//
//  Square.m
//  ObJCTut2
//
//  Created by Evans Owamoyo on 11.01.2021.
//

#import "Square.h"
#import "Rectangle.h"
@implementation Square

@synthesize side;

- (void)setSide:(int)side{
    [self setWidth:side andHeight:side];
}
- (int)side{
    return side;
}
@end
