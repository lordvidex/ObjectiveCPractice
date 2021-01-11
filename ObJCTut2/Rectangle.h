//
//  Rectangle.h
//  ObJCTut2
//
//  Created by Evans Owamoyo on 31.12.2020.
//

#import <Foundation/Foundation.h>
#import "GraphicObject.h"

@class XYPoint;

@interface Rectangle : GraphicObject

@property int width, height;

- (XYPoint *) origin;

- (void) setOrigin: (XYPoint *) point;

- (void) setWidth:(int)width andHeight:(int) height;

- (void) translate:(XYPoint *) from;

- (int) area;

-(int) perimeter;

-(BOOL) containsPoint:(XYPoint *)point;

- (Rectangle *) intersect:(Rectangle *)rect;

- (NSString *) description;

-(void) draw;
@end


