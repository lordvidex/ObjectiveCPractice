//
//  Rectangle.m
//  ObJCTut2
//
//  Created by Evans Owamoyo on 31.12.2020.
//

#import "Rectangle.h"
#import "XYPoint.h"
@interface Rectangle()
- (void) Rectangle_assignRectangle:(Rectangle *) newRectangle from:(Rectangle *)oldRectangle;
- (NSArray *) Rectangle_getIntersectingPoints:(Rectangle *) withPoint;
@end
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

- (void) translate:(XYPoint *)from{
    origin.x = from.x;
    origin.y = from.y;
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

- (NSArray *)Rectangle_getIntersectingPoints:(Rectangle *)withPoint{
    NSMutableArray * ansArray = [[NSMutableArray alloc] init];
    XYPoint* mainXY = [withPoint origin];
    XYPoint* changingXY = [XYPoint initWithX:mainXY.x andY:mainXY.y];
    
    //checking the four sides of the withPoint rectangle if it enters into the boundary of the self rectangle
    if([self containsPoint:changingXY]){
        [ansArray addObject:changingXY];
    }
    changingXY = [XYPoint initWithX:(mainXY.x+withPoint.width) andY:mainXY.y];
    if([self containsPoint:changingXY]){
        [ansArray addObject:changingXY];
    }
    
    changingXY = [XYPoint initWithX:mainXY.x andY:(mainXY.y+withPoint.height)];
    if([self containsPoint:changingXY]){
        [ansArray addObject:changingXY];
    }
    
    changingXY = [XYPoint initWithX:(mainXY.x+withPoint.width) andY:(mainXY.y+withPoint.height)];
    if([self containsPoint:changingXY]){
        [ansArray addObject:changingXY];
    }
    
    // withPoint is completely inside the self rectangle.. simply return
    if([ansArray count]==4){
        return ansArray;
    }
    // change the mainXY to origin and all instances of withPoint should now be `self`
    mainXY = origin;
    changingXY = [XYPoint initWithX:mainXY.x andY:mainXY.y];
    if([withPoint containsPoint:changingXY]){[ansArray addObject:changingXY];}
    
    changingXY = [XYPoint initWithX:(mainXY.x+self.width) andY:mainXY.y];
    if([withPoint containsPoint:changingXY]){[ansArray addObject:changingXY];}
    
    changingXY = [XYPoint initWithX:mainXY.x andY:(mainXY.y+self.height)];
    if([withPoint containsPoint:changingXY]){[ansArray addObject:changingXY];}
    
    changingXY = [XYPoint initWithX:(mainXY.x+self.width) andY:(mainXY.y+self.height)];
    if([withPoint containsPoint:changingXY]){[ansArray addObject:changingXY];}
    
    return ansArray;
}
- (BOOL)containsPoint:(XYPoint *)point{
    // check the y axis
    if(point.y>=origin.y && point.y<=origin.y+height){
        // check the x axis
        //left boundary , followed by right boundary
        if(point.x>=origin.x&&point.x<=origin.x+width){
            return YES;
        }else{
            // it passed the vertical test but failed the horizontal test
            return NO;
        }
    }else {
        return NO;
    }
}

- (void)Rectangle_assignRectangle:(Rectangle *)newRectangle from:(Rectangle *)oldRectangle{
    XYPoint * newOrigin = [[XYPoint alloc]init];
    [newOrigin setXY:[oldRectangle origin].x andY:[oldRectangle origin].y];
    [newRectangle setWidth:oldRectangle.width];
    [newRectangle setHeight:oldRectangle.height];
    [newRectangle setOrigin:newOrigin];
}

- (Rectangle *)intersect:(Rectangle *)rect{
    Rectangle * answer = [[Rectangle alloc] init];
    //3 possible scenarios
    //1. we have 0
        
        // rect is not inside self.. we need to check that self is also not inside rect
    
    //2. we have 1
    //! this means that one of self edges must be inside `rect` also
    
    //3. we have 4
    // just return rect
    NSArray<XYPoint *>* array = [self Rectangle_getIntersectingPoints:rect];
    if([array count]==4){
        //TODO: solve etch case for 2 rects on the same x axis level but different x origin value
        int w = 0,h = 0;
        XYPoint * ref;
        for(int i = 0;i<array.count;i++){
            if(!ref){
                ref = array[i];
                continue;
            }
            if(array[i].x<=ref.x&&array[i].y<=ref.y){
                ref = array[i];
            }
        }
        for (XYPoint* xt in array) {
            if(xt.x==ref.x&&xt.y!=ref.y){
                h = fabs(xt.x-ref.x);
            }else if(xt.y==ref.y&&xt.x!=ref.x){
                w = fabs(xt.x-ref.x);
            }
        }
        [answer setOrigin:[XYPoint initWithX:ref.x andY:ref.y]];
        [answer setWidth:w andHeight:h];
        return answer;
    }else if([array count]==0){
        return answer;
    }else if([array count]==2){
        // TODO: test cases actually fall into `array.count ==2` instead of 4:
        // **********************s***
        
        // we have to return a Rectangle with:
        // origin: min(x0,x1), min(y0,y1)
        // width: abs(x1-x0)
        // height: abs(y1-y0)
        [answer setOrigin:[XYPoint initWithX:MIN(array[0].x,array[1].x) andY:MIN(array[0].y,array[1].y)]];
        [answer setWidth:fabs(array[1].x-array[0].x) andHeight:fabs(array[1].y-array[0].y)];
    }
    
    return answer;
}

-(NSString *)description{
    return [NSString stringWithFormat:@"Rectangle (\nwidth: %d, height: %d, origin: (%g,%g)",self.width,self.height,self.origin.x,self.origin.y];
}
- (void) draw{
    printf(" ");
    for(int i = 0;i<width;i++){
        printf("-");
    }
    for (int i = 0; i<height; i++) {
        printf("\n|");
        for(int i = 0;i<width;i++){
            printf(" ");
        }
        printf("|");
    }
    printf("\n ");
    for(int i = 0;i<width;i++){
        printf("-");
    }
    printf("\n");
}
@end

