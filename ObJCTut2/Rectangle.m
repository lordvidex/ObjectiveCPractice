//
//  Rectangle.m
//  ObJCTut2
//
//  Created by Evans Owamoyo on 31.12.2020.
//

#import "Rectangle.h"
#import "XYPoint.h"

@implementation Rectangle{
    XYPoint * origin;
}
@synthesize width,height;

-(XYPoint *)origin{
    return origin;
}
- (void)setOrigin:(XYPoint *)point{
    origin = point;
}
-(int)area {
    return width*height;
}

- (void)setWidth:(int)width andHeight:(int)height{
    self.width = width;
    self.height = height;
}

-(int)perimeter {
    return 2*(width+height);
}
@end

