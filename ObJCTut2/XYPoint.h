//
//  XYPoint.h
//  ObJCTut2
//
//  Created by Evans Owamoyo on 11.01.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XYPoint : NSObject
@property double x;
@property double y;

- (void) setXY:(int) x andY:(int)y;
@end

