//
//  main.m
//  ObJCTut2
//
//  Created by Evans Owamoyo on 18.12.2020.
//

#import <Foundation/Foundation.h>
#import "Square.h"
//#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //! This implies that a child class `Square` can be stored in a variable of it's parent type
        //! but the methods called on it must be present in the parent class as well
        //! This also works out of the box without importing the parent class
        Rectangle* mySquare = [[Square alloc]init];
        NSLog(@"My square is a %@",[mySquare class]);
        NSLog(@"My square has %i as the length of it's side", [mySquare height]);
        
        /* TEST 2 */
        //! Assigning a parent instance to a child object type also works
        //! BUT with an IDE warning only.. also I get child methods automatically out of the box
        Square* myRectangle = [[Rectangle alloc] init];
        printf("%i\n",[myRectangle width]);
    }
    return 0;
}
