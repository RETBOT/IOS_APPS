//
//  main.m
//  appNSString
//
//  Created by Guest User on 27/09/22.
//
//  By: RETBOT
#import <Foundation/Foundation.h>
#import <iostream>

using namespace std;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *str1 = @"Hello";
        NSString *str2 = @"World";
        NSString *str3;
        NSString *str4;
        int  len ;

        /* uppercase string */
        str3 = [str2 uppercaseString];
        NSLog(@"Uppercase String :  %@\n", str3 );

        /* concatenates str1 and str2 */
        str3 = [str1 stringByAppendingFormat:@"World"];
        NSLog(@"Concatenated string:   %@\n", str3 );

        /* total length of str3 after concatenation */
        len = [str3 length];
        NSLog(@"Length of Str3 :  %d\n", len );

        /* InitWithFormat */
        str3 = [[NSString alloc] initWithFormat:@"%@ %@",str1,str2];
        NSLog(@"Using initWithFormat:   %@\n", str3 );
        //  By: RETBOT
        // Evaluacion
        // apicar o utilizar varios metodos de la clase NSString
        
        /* lowercase string */
        str4 = [str1 lowercaseString];
        NSLog(@"Lowercase String :  %@\n", str4 );
        
        str4 = [str1 stringByAppendingFormat:@"%@",@" 🌎 "];
        NSLog(@"stringByAppendingFormat String :  %@\n", str4 );
        
        str4 = [str1 capitalizedString];
        NSLog(@"CapitalizedString String :  %@\n", str4 );
        
        
        NSString *str5 = @"Tec laguna";
        NSString *str6;
        
        str6 = [str5 lowercaseString];
        // pregunta al usuario
        if([str6 hasPrefix:@"tec"])
            cout<<"La cadena inicia con "<< "-- tec"<<" 🤖 "<<endl;
        else
            cout<<"La cadena no inicia con"<<" -- tec"<<" 🥲 "<<endl;
        /*
        string str7;
        NSString *str8;
        
        NSLog(@"Ingresa una palabra para agregar a %@ : ", str5);
        cin>>str7;
        
        str8 = [[NSString alloc] initWithUTF8String:str7.c_str()];

        NSString *str9 = [str5 stringByAppendingFormat:@" %@",str8];
        //  By: RETBOT
        NSLog(@" %@",str9);
        
        if([str8 hasPrefix:@"rifa"])
            cout<<" 🐈‍⬛ "<<endl;
        else
            cout<<" 🥲 "<<endl;
        */
        
        NSMutableArray *array = [NSMutableArray arrayWithCapacity:1];
        string palabra = "";
        for(int i=0; i<5; i++){
            char ale = arc4random_uniform(25)+65;
            cout<<"Introduce una palabra que comienza con = "<<ale<<endl;
            cin>>palabra;
        }
        
        
        
    }
    return 0;
}
//  By: RETBOT
