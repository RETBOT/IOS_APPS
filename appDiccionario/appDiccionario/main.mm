//
//  main.m
//  appDiccionario
//
//  Created by Guest User on 28/09/22.
////  By: RETBOT

#import <Foundation/Foundation.h>
#import <iostream>

using namespace std;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        /*
        NSDictionary *diccionario1;
        
        diccionario1 = [NSDictionary dictionaryWithObjectsAndKeys:
                     // valor , clave
                        @"uno",@"one",
                        @"uno",@"one",
                        @"dos",@"two",
                        @"tres",@"three",
                        @"cuatro",@"four",
                        @"cinco",@"five",
                        nil];
        
        NSLog(@"one = %@",[diccionario1 objectForKey:@"one"]);
        NSLog(@"three = %@",[diccionario1 objectForKey:@"three"]);
        
        NSMutableDictionary *diccionario2 = [NSMutableDictionary dictionary];
        [diccionario2 setObject:@"1" forKey:@"one"];
        [diccionario2 setObject:@"2" forKey:@"two"];
        [diccionario2 setObject:@"3" forKey:@"three"];
        
        NSLog(@"One %@", [diccionario2 objectForKey: @"one"]);
        NSLog(@"Two %@", [diccionario2 objectForKey: @"two"]);
        
        // Los diccionarios solo utilizan Object no utilizan tipos  primitivos
        int num = 125;
        float valor = 3.1415;
        char caracter = 'T';
        BOOL boleano = YES;
        NSNumber *initWrapper;
        initWrapper = [NSNumber numberWithInt:num];
        NSNumber *valorWrapper = [NSNumber numberWithFloat:valor];
        NSNumber *caracterWrapper = [NSNumber numberWithChar:caracter];
        NSNumber *booleanWrapper = [NSNumber numberWithBool:boleano];
        
        NSMutableDictionary *diccionario3 = [NSMutableDictionary dictionary];
        [diccionario3 setObject:initWrapper forKey:@"entero"];
        [diccionario3 setObject:valorWrapper forKey:@"float"];
        [diccionario3 setObject:caracterWrapper forKey:@"char"];
        [diccionario3 setObject:booleanWrapper forKey:@"Bool"];
        
        NSLog(@"Dicionario 1 : %@", diccionario1);
        NSLog(@"Dicionario 2 : %@", diccionario2);
        NSLog(@"Dicionario 3 : %@", diccionario3);
        
        // Usando for-in
        NSLog(@"Utilizando for-in");
        for (NSString *cad in diccionario1.allKeys)
            NSLog(@"Claves = %@ ",cad);

        for (NSString *cad in diccionario2.allValues)
            NSLog(@"Valor = %@ ",cad);
        
        string str;
        
        NSString *cadena = @"three"; // capturar la cadena a utilizar
        
        
        for(NSString *cad in diccionario1.allKeys){
            if(cadena == cad){
                NSLog(@"Clave encontrada = %@ ",cad);
                NSLog(@"Valor = %@ ", [diccionario1 objectForKey:cadena]);
            }
        }
        
        cout<<"Utilizando ID"<<endl;
        
        for(id key in diccionario1){
            if(cadena == key){
                NSLog(@"Clave Encontrada");
                id valor = diccionaio1[key];
                NSLog(@"Clave = %@, Valor = %@", key, valor);
            }
        }
        *///  By: RETBOT
        
        NSDictionary *diccionarioPaises;
        diccionarioPaises = [NSDictionary dictionaryWithObjectsAndKeys:
                             @"🇲🇽", @"mexico",
                             @"🇨🇦", @"canada",
                             @"🇺🇸", @"estados unidos",
                             @"🇦🇷", @"argentina",
                             @"🇻🇪", @"venezuela",
                             nil];
        
        NSDictionary *diccionarioPaises2 = [NSDictionary dictionaryWithObjectsAndKeys:
                             @"mexico", @"1",
                             @"canada",@"2",
                             @"estados unidos",@"3",
                             @"argentina",@"4",
                             @"venezuela",@"5",
                             nil];
        
        NSDictionary *diccionarioPaisesPista = [NSDictionary dictionaryWithObjectsAndKeys:
                                                @"MEX", @"mexico",
                                                @"CA", @"canada",
                                                @"EE. UU", @"estados_unidos",
                                                @"ARG", @"argentina",
                                                @"VE", @"venezuela",
                                                nil];
        
        char opc = 's';
        BOOL terminar = false;
        int contador = 0;
        while(!terminar){
            int r = arc4random_uniform((int)diccionarioPaises.count)+1;
            NSString *cadena = [NSString stringWithFormat:@"%d", r];
            NSString *bandera = [diccionarioPaises2 objectForKey:cadena];
            NSLog(@"Ingresa el nombre del siguiente pais = %@", [diccionarioPaises objectForKey:bandera]);
            
            BOOL band = true;
            while(band){
            char cadAux[50];
            string cade = "";
            cout<<"Pais : ";
            scanf("%s",cadAux);
            //  By: RETBOT
            NSString *pais = [NSString stringWithCString:cadAux encoding:NSASCIIStringEncoding];
            pais = [pais lowercaseString];
                for(NSString *cad in diccionarioPaises.allKeys){
                    if([pais isEqual:cad]){
                        NSLog(@"Correctoooooooo......");
                        NSLog(@"Pais = %@ ",cad);
                        NSLog(@"Bandera = %@ ", [diccionarioPaises objectForKey:pais]);
                        band = false;
                        break;
                    }
                }

                if(band){
                    NSLog(@"Error %d de 3",contador+1);
                    contador++;
                    if(contador > 3){
                        NSLog(@"La bandera es %@",[diccionarioPaises objectForKey:bandera]);
                        band = true;
                        contador = 0;
                        break;
                    }else {
                        char pista = 'n';
                        cout<<"Necesitas ayuda (s/n) : ";
                        cin>>pista;
                        if( pista == 's')
                            NSLog(@"Ayuda = %@",[diccionarioPaisesPista objectForKey:bandera]);
                    }
                    cin.get();
                }
            }
            
            cout<<"Continuar con otra bandera (s/n) : ";
            cin>>opc;
            
            if( opc == 's')
                terminar = NO;
            else
                terminar = YES;
        }
    }
    
    return 0;
}//  By: RETBOT
