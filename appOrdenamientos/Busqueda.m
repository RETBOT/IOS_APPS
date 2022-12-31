//
//  Busqueda.m
//  appOrdenamientos
//
//  Created by Roberto Esquivel Troncoso on 17/09/22.
//

#import "Busqueda.h"

@implementation Busqueda

- (Node *) insertNode: (Node *)node withData:(int)value {
 
    if (node == NULL) {
        Node *newNode = [[Node alloc] initWithValue: value];
        return newNode;
 
    } else {
        // @[@5, @6, @17, @1, @15, @32, @3, @8, @91];
        if (value <= node.num) {
            node.left = [self insertNode: node.left withData: value];
        } else {
            node.right = [self insertNode: node.right withData: value];
        }
        return node;
    }
}
 
- (Node *) createBinaryTree:(NSArray *)binaryTreeRawData andRoot:(Node *)root {
 
    // Complexities of creating a binary tree.
    // Time complexity: O(n * log(n))
    // * at least one full interation of the array to build the tree, so (n) up front.
    // Space complexity: O(n)
 
    // Set as the root node on the tree
    root.num = [[binaryTreeRawData objectAtIndex:0] intValue];
    int i = 1;
    while (i < (int)[binaryTreeRawData count]) {
        root = [self insertNode: root withData: [[binaryTreeRawData objectAtIndex:i] intValue]];
        i++;
    }
    return root;
}

- (int) arbolBinario:(int)value atLevel:(int)level onTree:(Node *)tree {
    // Complexities of searching a binary tree.
    // Time complexity: O(log(n))
    // Space complexity: O(log(n)
    int levelValue = level;
    if (tree == NULL) {
        return -1;
    } else {
 
        if (value == tree.num) {
            return levelValue;
        } else {
            if (value < tree.num) {
                levelValue = [self arbolBinario:value atLevel: ++level onTree:tree.left];
            } else {
                levelValue = [self arbolBinario:value atLevel: ++level onTree:tree.right];
            }
        }
    }
    return levelValue;
}

@end
