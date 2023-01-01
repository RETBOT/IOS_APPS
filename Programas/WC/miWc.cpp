/*
Nombre: Roberto Esquivel Troncoso 
No. Control: 19130519

Tarea: 
APP. wc de Unix'Like
PARA ORDENAR CADENAS CON BURBUJA en UNIX’Like

*/
//  By: RETBOT
//#include <stdio.h>
#include <iostream>
#include <fstream>
#include <string>
#include <cstdlib>
using namespace std;

int main(int argc, char **argv) {
  /*FILE * fichero;
  fichero = fopen(argv[1],"r+t");
  while(!feof(fichero)) fputc(fgetc(fichero), stdout);
  rewind(fichero);
  while(!feof(fichero)) fputc(fgetc(fichero), stdout);
  fclose(fichero);
  getchar();*/

// APP. wc de Unix'Like
  ifstream fichero(argv[1]); // lectura del archivo

  char c; // variable para leer caracter por caracter
  char cAux = ' '; // variabe para leer caracter anterior (para contar las palabras)

  int _lineas = 0; // variable para contar las lineas
  int _palabras = 0; // variable para contar las palabras
  int _bytes = 0; // variable para contar los bytes
  
  string texto = "";
	
  while(fichero.get(c)){ // ciclo para recorrer el archivo, caracter por caracter 
	//cout.put(c);
	_bytes++; // agrega uno a los bytes / 1 byte = 1 char 

	if(c==10){ // si tiene un salto de linea
	  _lineas++; // agrega uno a las lineas
	  _palabras++; // y agrega uno a las palabras 
	}

	if(c == ' ' && cAux != ' '){ // Si el caracter actual es un espacio y
				    // el caracter anterior es diferente de espacio
	  _palabras++; // agrega uno a las palabras 
	}else{ // si no 
	  cAux = c; // pone el caracter acutal en el caracter anterior 
	}
	texto += c;
  }
  fichero.clear(); // (1)
  /*while(fichero.get(c))
	cout.put(c);*/
  fichero.close();

  cout<<_lineas<<" "<<_palabras<< " "<<_bytes<<" "<<argv[1]<<endl;

  //cin.get(); 
 
 // PARA ORDENAR CADENAS CON BURBUJA en UNIX’Like
  if(argv[2] != ""){ // Se escribe un nombre para almacenar el texto ordenado
    string * arre = new string[_lineas]; // arreglo para almacenar el texto 
    string textAux = "";// string auxiliar para almacenar palabras 
    for(int i=0, j=0; i< texto.length(); i++){ 
	if(texto[i] != '\n' || texto[i] == ' '){ // Si el texto no contiene un salto de linea o un espacio en blanco 
	   textAux+= texto[i]; // se almacena caracter por caracter 
        }else{ // si no 
	   arre[j] = textAux; // agrega la palabra al arreglo 
	   textAux = ""; // borra la palabra
	   j++; // Continua con la siguiente palabra 
        }//Fin else
    } // Fin For
  
   cout<<endl<<argv[2]<<endl; // imprime el nombre del archivo

  string aux = ""; // sintring auxiliar para ordenar el arreglo 
  //  By: RETBOT
  for(int i=0; i<_lineas; i++){ // For para recorrer palabra 
      for(int j=i+1; j<_lineas; j++){ // for para comparar la palabra actual, con las demas palabras 
		if(arre[i]>arre[j]){ // Si la palabra actual, es mayor (en ASCII) con la palabra siguiente  
			aux = arre[i]; // Se almacena el el auxiliar 
			arre[i]=arre[j]; // se elimina la palabra actual y se pone la palabra siguiente 
			arre[j]=aux; // en la palabra siguiente se pone la palabra actual 
		 }
      }
   }
  
  // convertimos de agrreglo de string a char 
  char * arreChar = new char[_bytes];
  int k = 0; //  variable para el recorrido del arreglo de char 

  for(int i=0; i<_lineas; i++){ // recorremos linea por linea 
     cout<<arre[i]<<endl; // imprimimos el renglon 
     for(int j=0; j<arre[i].length(); j++){ // recorremos el renglon y lo almacenamos en el arreglo de char 
         arreChar[k++] = arre[i][j]; // almacenamos los carcteres del strng el en arreglo de char 
    }
  }
//  By: RETBOT
  FILE *archivo;  // Utilizamos FILE para crear y escribir en un archivo 
  archivo = fopen(argv[2],"wb"); // se abre el archivo 
  fprintf(archivo, arreChar); // y se escribe en el 
  fclose(archivo); // se cierra el archivo, para no dañarlo 
  }//Fin if principal

  return 0;
}
//  By: RETBOT
