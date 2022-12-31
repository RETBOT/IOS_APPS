//
//  Ordenamiento.m
//  appOrdenamientos
//
//  Created by Roberto Esquivel Troncoso on 17/09/22.
//

#import "Ordenamiento.h"

@implementation Ordenamiento

-(NSArray *) burbujaAsc: (NSArray *) vector
{
    int comp, interc;
    comp = interc = 0;
    NSMutableArray* vecAux = [[NSMutableArray alloc] initWithArray:vector];
    for(int i = 0; i < [vecAux count] - 1; i++)
    {
        for(int j =(int)[vecAux count]-1; j > i ; j--)
        {
            comp++;
            if([[vecAux objectAtIndex:(j-1)] intValue] > [[vecAux objectAtIndex:j] intValue])
            {
                int temp = [[vecAux objectAtIndex:(j-1)]intValue];
                [vecAux replaceObjectAtIndex:j-1 withObject:[vecAux objectAtIndex:j]];
                [vecAux replaceObjectAtIndex:j withObject:[NSNumber numberWithInt:temp]];
                interc++;
            }
        }
    }
    NSLog(@"No. de Comparaciones = %d",comp);
    NSLog(@"No. de Intercambios = %d",interc);
    
    return  [vecAux mutableCopy];
}

-(NSArray *) burbujaDsc: (NSArray *) vector
{
    int comp, interc;
    comp = interc = 0;
    NSMutableArray* vecAux = [[NSMutableArray alloc] initWithArray:vector];
    for(int i = 0; i < [vecAux count] - 1; i++)
    {
        for(int j =(int)[vecAux count]-1; j > i ; j--)
        {
            comp++;
            if([[vecAux objectAtIndex:(j-1)] intValue] < [[vecAux objectAtIndex:j] intValue])
            {
                int temp = [[vecAux objectAtIndex:(j-1)]intValue];
                [vecAux replaceObjectAtIndex:j-1 withObject:[vecAux objectAtIndex:j]];
                [vecAux replaceObjectAtIndex:j withObject:[NSNumber numberWithInt:temp]];
                interc++;
            }
        }
    }
    NSLog(@"No. de Comparaciones = %d",comp);
    NSLog(@"No. de Intercambios = %d",interc);
    
    return  [vecAux mutableCopy];
}

-(NSArray *) quickSortArrayAsc:(NSArray *)unsortedArray;
{
    // Time complexity: O(n^2).
    //  * First time arround is to separate the entire array.
    //  * Second time around should sort the rest of the array.
    // Space complexity: O(log n)  +1 for unsortedArray but the mutable copy never gets added to the autorelease pool.
    // All of the arrays that are not attached to the returnArray are released by a compiler pass at the end of the method.
 
    int count = (int)[unsortedArray count];
    if (count <= 1) {
        return unsortedArray;
    }
 
    int pivot = [[unsortedArray objectAtIndex: (count/2)] intValue];
    NSMutableArray *smallerThanArray = [NSMutableArray array];
    NSMutableArray *largerThanArray = [NSMutableArray array];
    NSMutableArray *pivotArray = [NSMutableArray array];
    [pivotArray addObject: @(pivot)];
 
    for (int e = 0; e < count; e++) {
        int num = [[unsortedArray objectAtIndex:e] intValue];
 
        if (num < pivot) {
            [smallerThanArray addObject: @(num)];
        } else if (num > pivot) {
            [largerThanArray addObject: @(num)];
            // To address the possibly duplicate that is defined in the pivot, in this case 4.
        } else if (e != (count/2) && pivot == num) {
            [pivotArray addObject: @(num)];
        }
    }
 
    NSMutableArray *returnArray = [NSMutableArray array];
    [returnArray addObjectsFromArray: [self quickSortArrayAsc: smallerThanArray]];
    [returnArray addObjectsFromArray: pivotArray];
    [returnArray addObjectsFromArray: [self quickSortArrayAsc: largerThanArray]];
 
    return returnArray;
}


-(NSArray *) quickSortArrayDsc:(NSArray *)unsortedArray;
{
    // Time complexity: O(n^2).
    //  * First time arround is to separate the entire array.
    //  * Second time around should sort the rest of the array.
    // Space complexity: O(log n)  +1 for unsortedArray but the mutable copy never gets added to the autorelease pool.
    // All of the arrays that are not attached to the returnArray are released by a compiler pass at the end of the method.
 
    int count = (int)[unsortedArray count];
    if (count <= 1) {
        return unsortedArray;
    }
 
    int pivot = [[unsortedArray objectAtIndex: (count/2)] intValue];
    NSMutableArray *smallerThanArray = [NSMutableArray array];
    NSMutableArray *largerThanArray = [NSMutableArray array];
    NSMutableArray *pivotArray = [NSMutableArray array];
    [pivotArray addObject: @(pivot)];
 
    for (int e = 0; e < count; e++) {
        int num = [[unsortedArray objectAtIndex:e] intValue];
 
        if (num > pivot) {
            [smallerThanArray addObject: @(num)];
        } else if (num < pivot) {
            [largerThanArray addObject: @(num)];
            // To address the possibly duplicate that is defined in the pivot, in this case 4.
        } else if (e != (count/2) && pivot == num) {
            [pivotArray addObject: @(num)];
        }
    }
 
    NSMutableArray *returnArray = [NSMutableArray array];
    [returnArray addObjectsFromArray: [self quickSortArrayDsc: smallerThanArray]];
    [returnArray addObjectsFromArray: pivotArray];
    [returnArray addObjectsFromArray: [self quickSortArrayDsc: largerThanArray]];
 
    return returnArray;
}


- (NSArray *)  mergeArrayAsc:(NSArray *)leftArray rightArray:(NSArray *)rightArray {
 
    NSMutableArray *returnArray = [NSMutableArray array];
    int i = 0, e = 0;
 
    while (i < [leftArray count] && e < [rightArray count]) {
        int leftValue = [[leftArray objectAtIndex:i] intValue];
        int rightValue = [[rightArray objectAtIndex:e] intValue];
        if (leftValue < rightValue) {
            [returnArray addObject: [leftArray objectAtIndex:i++]];
        } else {
            [returnArray addObject: [rightArray objectAtIndex:e++]];
        }
    }
 
    while (i < [leftArray count]) {
        [returnArray addObject: [leftArray objectAtIndex:i++]];
    }
 
    while (e < [rightArray count]) {
        [returnArray addObject: [rightArray objectAtIndex:e++]];
    }
 
    return returnArray;
}

- (NSArray *) mergeSortArrayAsc:(NSArray *)unsortedArray {
 
    // Time complexity: Worst case is: O(n * log(n)).
    // Space complexity: O(3 * n) or O(n) due to the 3 NSArrays that are used.
 
 
    int count = (int)[unsortedArray count];
    if (count < 2) {
        return unsortedArray;
    }
    int middle = count / 2;
    NSArray *leftArray = [unsortedArray subarrayWithRange: NSMakeRange(0, middle)];
    NSArray *rightArray = [unsortedArray subarrayWithRange: NSMakeRange(middle, (count - middle))];
 
    NSArray *returnArray = [self mergeArrayAsc: [self mergeSortArrayAsc: leftArray] rightArray: [self mergeSortArrayAsc: rightArray]];
    return returnArray;
}


- (NSArray *)  mergeArrayDsc:(NSArray *)leftArray rightArray:(NSArray *)rightArray {
 
    NSMutableArray *returnArray = [NSMutableArray array];
    int i = 0, e = 0;
 
    while (i < [leftArray count] && e < [rightArray count]) {
        int leftValue = [[leftArray objectAtIndex:i] intValue];
        int rightValue = [[rightArray objectAtIndex:e] intValue];
        if (leftValue > rightValue) {
            [returnArray addObject: [leftArray objectAtIndex:i++]];
        } else {
            [returnArray addObject: [rightArray objectAtIndex:e++]];
        }
    }
 
    while (i < [leftArray count]) {
        [returnArray addObject: [leftArray objectAtIndex:i++]];
    }
 
    while (e < [rightArray count]) {
        [returnArray addObject: [rightArray objectAtIndex:e++]];
    }
 
    return returnArray;
}

- (NSArray *) mergeSortArrayDsc:(NSArray *)unsortedArray {
 
    // Time complexity: Worst case is: O(n * log(n)).
    // Space complexity: O(3 * n) or O(n) due to the 3 NSArrays that are used.
 
 
    int count = (int)[unsortedArray count];
    if (count < 2) {
        return unsortedArray;
    }
    int middle = count / 2;
    NSArray *leftArray = [unsortedArray subarrayWithRange: NSMakeRange(0, middle)];
    NSArray *rightArray = [unsortedArray subarrayWithRange: NSMakeRange(middle, (count - middle))];
 
    NSArray *returnArray = [self mergeArrayDsc: [self mergeSortArrayDsc: leftArray] rightArray: [self mergeSortArrayDsc: rightArray]];
    return returnArray;
}


@end
