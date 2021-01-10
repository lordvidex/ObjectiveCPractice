//
//  Square.h
//  ObJCTut2
//
//  Created by Evans Owamoyo on 11.01.2021.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

@interface Square : Rectangle

@property int side;

- (void)setSide:(int)side;
- (int) side;
@end
