//
//  Busqueda.h
//  appOrdenamientos
//
//  Created by Roberto Esquivel Troncoso on 17/09/22.
//

#import <Foundation/Foundation.h>
#include "Node.h"
NS_ASSUME_NONNULL_BEGIN

@interface Busqueda : NSObject
- (Node *) insertNode: (Node *)node withData:(int)value;
- (Node *) createBinaryTree:(NSArray *)treeData andRoot:(Node *)root;

- (int) arbolBinario:(int)value atLevel:(int)level onTree:(Node *)tree;
@end

NS_ASSUME_NONNULL_END
