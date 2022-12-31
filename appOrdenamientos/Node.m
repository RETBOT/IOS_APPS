//
//  Node.m
//  appOrdenamientos
//
//  Created by Roberto Esquivel Troncoso on 17/09/22.
//

#import "Node.h"

@implementation Node
- (id)initWithValue:(int)value {
 
    self = [super init];
    if (self != nil) {
        self.num = value;
        self.left = NULL;
        self.right = NULL;
    }
    return self;
}
@end
