//
//  main.m
//  appCadenasOc
//
//  Created by Usuario invitado on 20/09/22.
//
//  By: RETBOT
#import <Foundation/Foundation.h>
#import <iostream>
using namespace std;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        cout<<"Cadena 0 : "<<argv[0]<<endl;
        cout<<"Cadena 0 : "<<argv[1]<<endl;
        
        for (int i=1; i<argc; i++) {
            cout<<argv[i]<<" ";
        }
        cout<<endl;
        
        
        NSString *cadArgv = [NSString stringWithFormat:@"%s",argv[5]];
       
        NSLog(@"Cadena NSString : %@",cadArgv);
        
        NSString *cadMinuscula = [cadArgv lowercaseString];
        NSLog(@"Cadena NSString : %@",cadMinuscula);
        
        // Cadenas C++
        string cadenaCpp = argv[5];
        NSString *cadenaNS = @(cadenaCpp.c_str());
        NSLog(@"Cadena NSString : %@",cadenaNS);
        
        
        NSString *cadenaC = @(argv[5]);
        NSLog(@"Cadena C : %@",cadenaC);
        
        int tam = (int)[@"Obtener el tamaño de la cadena" length];
        cout<<"Tamaño de la cadena = "<<tam<<endl;
        
        
        // Utilizando clases de objetive-c determine mayusculas y minusculas en la cadena argv[4]
        
        // NSCharacterSet  clase para
//  By: RETBOT
        int min = 0, may = 0;
        int vocalesMin = 0;
        int vocalesMay = 0;
        
        for (int i=0; i < [cadArgv length]; i++) {
            cout<<(char)[cadArgv characterAtIndex:i]<<endl;
            /*if([cadArgv characterAtIndex:i] >= 'a' && [cadArgv characterAtIndex:i] <= 'z')
                min++;
            else if([cadArgv characterAtIndex:i] >= 'A' && [cadArgv characterAtIndex:i] <= 'Z')
                may++;
            */
            //  By: RETBOT
            if([[NSCharacterSet uppercaseLetterCharacterSet] characterIsMember:[cadArgv characterAtIndex:i]])
                may++;
            if([[NSCharacterSet lowercaseLetterCharacterSet] characterIsMember:[cadArgv characterAtIndex:i]])
                min++;
            
            char c = [cadArgv characterAtIndex:i];
            if(c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u')
                vocalesMin++;
            
            if(c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U')
                vocalesMay++;
            
        }
        
        cout<<"Mayusculas : "<<may<<endl;
        cout<<"Minusculas : "<<min<<endl;
        cout<<"Vocales Mayusculas : "<<vocalesMay<<endl;
        cout<<"vocales Minusculas : "<<vocalesMin<<endl;

        
    }
    return 0;
}
//  By: RETBOT
