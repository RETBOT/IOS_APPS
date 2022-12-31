//
//  Node.h
//  appOrdenamientos
//
//  Created by Roberto Esquivel Troncoso on 17/09/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Node : NSObject
@property int num;
@property Node *left;
@property Node *right;
 
- (id)initWithValue:(int)value;
 
@end

NS_ASSUME_NONNULL_END
