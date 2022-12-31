//
//  Ordenamiento.h
//  appOrdenamientos
//
//  Created by Roberto Esquivel Troncoso on 17/09/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Ordenamiento : NSObject
// Burbuja
-(NSArray *) burbujaAsc: (NSArray *) vector;
-(NSArray *) burbujaDsc: (NSArray *) vector;

// quickSort
-(NSArray *) quickSortArrayAsc:(NSArray *)unsortedArray;
-(NSArray *) quickSortArrayDsc:(NSArray *)unsortedArray;

// Merge
-(NSArray *) mergeArrayAsc:(NSArray *)leftArray rightArray:(NSArray *)rightArray;
-(NSArray *) mergeSortArrayAsc:(NSArray *)unsortedArray;

-(NSArray *) mergeArrayDsc:(NSArray *)leftArray rightArray:(NSArray *)rightArray;
-(NSArray *) mergeSortArrayDsc:(NSArray *)unsortedArray;

@end

NS_ASSUME_NONNULL_END
