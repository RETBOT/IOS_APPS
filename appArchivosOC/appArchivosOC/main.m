//
//  main.m
//  appArchivosOC
//
//  Created by Usuario invitado on 11/10/22.
////  By: RETBOT

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSFileHandle * file;
        NSError *error;
        NSMutableData *escribirDatosEnArchivos;
        NSString *path = [NSString stringWithFormat:@"/Users/Guest/Desktop/appArchivosOC/FOLDER1/FOLDER2/archivo.txt"];


        file = [NSFileHandle fileHandleForReadingAtPath:path];
        
        if(file == nil)
            NSLog(@"Archivo no encontrado");
        
        NSString *getContenidoDelArchivo = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&error];
        
        if(error){
            NSLog(@"Error al abrir el archivo %@", error.localizedDescription);
            exit(0);
        }
        NSLog(@"Contenido del archivo ");
        NSLog(@"%@",getContenidoDelArchivo);
    }
    return 0;
}//  By: RETBOT
