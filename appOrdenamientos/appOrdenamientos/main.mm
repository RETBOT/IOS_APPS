//
//  main.m
//  appOrdenamientos
//
//  Created by Roberto Esquivel Troncoso on 17/09/22.
//

#import <Foundation/Foundation.h>
#import "Ordenamiento.h"
#import "Busqueda.h"
#import <iostream>

using namespace std;

int main(int argc, const char * argv[]) {
    
    
    // Para mañana: Documentar, Analiazar y realizar modificaciones
    @autoreleasepool {
        // insert code here...
        Ordenamiento *orden = [[Ordenamiento alloc] init];
        
        
        NSNumber *letraNS = @'A';
        char letra = [letraNS charValue];
        //NSLog(@"%@ = %c = %d",letraNS,letra,letra);
        cout<<[letraNS intValue]<<" = "<<letra<<" = "<<(int)letra<<endl;
        
        NSNumber *numeroNS = @35;
        int n1 = [numeroNS intValue];
        NSLog(@"%@ = %i",numeroNS,n1);
        
        NSArray *vectorNS = @[@9,@6,@3,@10,@1,@5];
        //NSMutableArray *vectorNS2 = [vectorNS mutableCopy];
        //NSMutableArray *vectorNS3 = [vectorNS mutableCopy];
        NSLog(@"Datos desordenados ");
        NSLog(@"%@",vectorNS);
        
        for (int i=0; i < [vectorNS count]; i++) {
            NSLog(@"Numero %@", vectorNS[i]);
        }
        
        int opcOrden = 0;
        printf("Menu Ordenamiento\n");
        printf("1.Burbuja\n2.QuickSort\n3.MergeSort\n");
        printf("Opc => ");
        scanf("%d", &opcOrden);
        
        int opcAscDec = 0;
        printf("1.Ascendente\n2.Descendente\n");
        printf("Opc => ");
        scanf("%d",&opcAscDec);
        
        if(opcOrden == 1){
            NSLog(@"Datos ordenados con burbuja ");
            if (opcAscDec == 1) {
                NSArray *burbuja = [orden burbujaAsc:vectorNS];
                NSLog(@"Arreglo VectorNS en orden Burbuja Ascendente %@", burbuja);
            }else if(opcAscDec == 2){
                NSArray *burbuja = [orden burbujaDsc:vectorNS];
                NSLog(@"Arreglo VectorNS en orden Burbuja Descendente %@", burbuja);
            }
        }else if(opcOrden == 2){
            NSLog(@"Datos ordenados con quickSort ");
            if (opcAscDec == 1) {
                NSArray *quick = [orden quickSortArrayAsc:vectorNS];
                NSLog(@"Arreglo en orden quickSort Ascendente %@", quick);
            }else if(opcAscDec == 2){
                NSArray *quick = [orden quickSortArrayDsc:vectorNS];
                NSLog(@"Arreglo en orden quickSort Descendente %@", quick);
            }
        }else if(opcOrden == 3){
            NSLog(@"Datos ordenados con mergeSort ");
            if (opcAscDec == 1) {
                NSArray *merge = [orden mergeSortArrayAsc:vectorNS];
                NSLog(@"Arreglo en orden mergeSort %@", merge);
            }else if(opcAscDec == 2){
                NSArray *merge = [orden mergeSortArrayDsc:vectorNS];
                NSLog(@"Arreglo en orden mergeSort %@", merge);
            }
        }
        
        /*
        int aleatorio = 500;//arc4random()%6 + 5;
        NSMutableArray *arregloM1 = [NSMutableArray arrayWithCapacity:aleatorio];
        
        for (int i=0; i<aleatorio; i++) {
        //for (int i=0; i<arregloM1.count; i++) {
        //for (int i=0; i< [arregloM1 count]; i++) {
            NSNumber *numero = [[NSNumber alloc] initWithInt:arc4random_uniform(900)+100];
            [arregloM1 addObject:numero];
            printf("Num %d = %d \n",(i+1),[numero intValue]);
        }
        NSLog(@"Arreglo %@", arregloM1);
        
        int opcOrdenamiento = 0;
        
        printf("Ordenamiento\n");
        printf("1.Burbuja\n");
        printf("2.QuickSort\n");
        printf("3.MergeSort\n");
        printf("opcion : ");
        scanf("%d", &opcOrdenamiento);
        
        
        Busqueda *bus = [[Busqueda alloc] init];
        Node *root = [[Node alloc] init];
        
        if(opcOrdenamiento == 1){
            NSArray *ord = [orden burbuja:arregloM1];
            NSLog(@"Arreglo en orden Burbuja %@", ord);
        }else if(opcOrdenamiento == 2){
            NSArray *ord = [orden quickSortArray:arregloM1];
            NSLog(@"Arreglo en orden quickSort %@", ord);
        }else if(opcOrdenamiento == 3){
            NSArray *ord = [orden mergeSortArray:arregloM1];
            NSLog(@"Arreglo en orden mergeSort %@", ord);
        }
       
        int opcBusqueda = 0;
        printf("Busqueda Binaria\n");
        printf("1.Si\n");
        printf("2.No\n");
        printf("Opcion :");
        scanf("%d",&opcBusqueda);
        
        if(opcBusqueda == 1){
       
        root = [bus createBinaryTree:arregloM1 andRoot:root];
        
        int pos = 0;
        int num = 0;
        printf("Ingresa el numero a busar : ");
        scanf("%d", &num);
        
        int resu = [bus arbolBinario:num atLevel:pos onTree:root];
        if(resu == -1){
            printf("Numero %d no encontrado :( \n",num);
        }else{
            printf("Numero %d encontrado\n",num);
        }
        }else{
            printf("}
         
         */
    }
    return 0;
}

