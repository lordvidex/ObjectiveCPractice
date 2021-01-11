//
//  GraphicObject.h
//  ObJCTut2
//
//  Created by Evans Owamoyo on 11.01.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GraphicObject : NSObject
//! `fillColor` is a 32 bit color
//! `lineColor` is a 32 bit line color
@property int fillColor, lineColor;

@property BOOL filled; // is the object filled

@end

NS_ASSUME_NONNULL_END
