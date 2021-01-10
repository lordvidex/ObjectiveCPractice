//
//  Rectangle.h
//  ObJCTut2
//
//  Created by Evans Owamoyo on 31.12.2020.
//

#import <Foundation/Foundation.h>

@class XYPoint;

@interface Rectangle : NSObject

@property int width, height;

- (XYPoint *) origin;

- (void) setOrigin: (XYPoint *) point;

- (void) setWidth:(int)width andHeight:(int) height;

- (int) area;

-(int) perimeter;

@end


