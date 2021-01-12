//
//  main.m
//  ObJCTut2
//
//  Created by Evans Owamoyo on 18.12.2020.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "XYPoint.h"
#import "Complex.h"
#import "Circle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
        // implement the Rectangle's intersect logic..
        Rectangle* firstRect = [Rectangle new];
        [firstRect setOrigin:[XYPoint initWithX:0 andY:0] ];
        [firstRect setWidth:20 andHeight:20];

        //set the second rectangle
        Rectangle* secondRect = [Rectangle new];
        [secondRect setOrigin:[XYPoint initWithX:10 andY:10]];
        [secondRect setWidth:5 andHeight:5];
        Rectangle* answer = [firstRect intersect:secondRect];
        NSLog(@"\n%@",answer);

        //Test 2
        // implement the Rectangle's intersect logic..
        firstRect = [Rectangle new];
        [firstRect setOrigin:[XYPoint initWithX:0 andY:0] ];
        [firstRect setWidth:50 andHeight:20];

        //set the second rectangle
        secondRect = [Rectangle new];
        [secondRect setOrigin:[XYPoint initWithX:30 andY:0]];
        [secondRect setWidth:50 andHeight:20];
        answer = [firstRect intersect:secondRect];
        NSLog(@"\n%@",answer);

        //Test 3 - Hammer shape
        // implement the Rectangle's intersect logic..
        firstRect = [Rectangle new];
        [firstRect setOrigin:[XYPoint initWithX:0 andY:20] ];
        [firstRect setWidth:50 andHeight:20];

        //set the second rectangle
        secondRect = [Rectangle new];
        [secondRect setOrigin:[XYPoint initWithX:30 andY:0]];
        [secondRect setWidth:50 andHeight:50];
        answer = [firstRect intersect:secondRect];
        NSLog(@"\n%@",answer);

        [secondRect draw];
        
        */
        
        // polymorphism && dynamic binding
        id dataValue;
        Complex * aComplexValue = [[Complex alloc] init];
        dataValue = aComplexValue;
        [dataValue setReal:43 andImaginary:32];
        [dataValue print];
        
        // assign it to a XYPoint instance
        XYPoint *myPoint = [[XYPoint alloc] init];
        dataValue = myPoint;
        [dataValue setXY:0 andY:4];
        NSLog(@"%@",[dataValue description]);
        
        // practicing in-built methods for working with dynamic types
        id abstractRect = [[Rectangle alloc]init];
        NSLog(@"%@",
              [NSString stringWithFormat:@"abstractRect is%@a type of Graphic Object",
               [abstractRect isKindOfClass:Circle.class]?@" ":@" NOT "]);
        
        // examples of using `selectors` with "@selector
        SEL printer = @selector(draw);
        SEL setter = @selector(setWidth:andHeight:);
        // use it on a valid instance e.g. Rectangle
        id anonymousRectangle = [Rectangle new];
        NSLog(@"%i",[anonymousRectangle respondsToSelector:setter]);
        // I tried passing int values to performSelectors but it only receives pointers/ Objects..
        // TODO: create an overloaded function that takes NSNumber instances in case you want to use selectors with
        // number objects
        
        [anonymousRectangle performSelector:printer];
        
        //* Catching errors using @try and @catch
        NSArray *myArray = [[NSArray alloc] init];
        @try{
            [myArray objectAtIndex:2];
        }@catch (NSException * exception){
            NSLog(@"%@%@",[exception name],[exception reason]);
            @throw;
        }
    }
    return 0;
}
