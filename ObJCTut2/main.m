//
//  main.m
//  ObJCTut2
//
//  Created by Evans Owamoyo on 18.12.2020.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
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
        
    }
    return 0;
}
