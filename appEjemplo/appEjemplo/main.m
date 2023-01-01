//
//  main.m
//  appEjemplo
//
//  Created by Ivan Herrera Garcia on 29/08/22.
//
//  By: RETBOT
#import <Foundation/Foundation.h>
#import "Ejemplo.h""

/*@interface SampleClass : NSObject

- (int) max : (int) num1 andNum2 : (int) num2;

@end

@implementation SampleClass

- (int)max:(int)num1 andNum2:(int)num2 {
    int result;
    
    if (num1 > num2) {
        result = num1;
    } else {
        result= num2;
        
    }
    return result;
}

@end*/

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int a = 200;
        int b = 231;
        
        printf("A = ");
        scanf("%d", &a);
        printf("B = ");
        scanf("%d", &b);
        
        
        
        int result;
        SampleClass *sampleClass = [[SampleClass alloc ]init];
        result = [ sampleClass max : a andNum2: b ];
        NSLog(@"Maximo valor is %d", result);
    }
    return 0;
}
//  By: RETBOT
