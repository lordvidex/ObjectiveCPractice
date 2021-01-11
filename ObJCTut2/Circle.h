//
//  Circle.h
//  ObJCTut2
//
//  Created by Evans Owamoyo on 11.01.2021.
//

#import "GraphicObject.h"

NS_ASSUME_NONNULL_BEGIN

@interface Circle : GraphicObject
@property double radius;

-(double) getArea;
- (double) getPerimeter;
@end

NS_ASSUME_NONNULL_END
