//	Se debe crear una matriz con las siguientes palabras como se muestra a 
//	continuación. Luego de eso debemos acomodar las palabras para que la primera
//	letra ?R? de cada una quede en la posición 5, alineándose.

Algoritmo sin_titulo
	Definir f, c, count, a Como Entero;
	Definir matriz, palabra Como Caracter;

	Dimension matriz[9,12];

	inicializarMatriz(matriz, 9, 12)
	agregarPalabra(matriz, "vector", 0)
	agregarPalabra(matriz, "matrix", 1)
	agregarPalabra(matriz, "programa", 2)
	agregarPalabra(matriz, "subprograma", 3)
	agregarPalabra(matriz, "subproceso", 4)
	agregarPalabra(matriz, "variable", 5)
	agregarPalabra(matriz, "entero", 6)
	agregarPalabra(matriz, "para", 7)
	agregarPalabra(matriz, "mientras", 8)
	imprimirMatriz(matriz, 9, 12)
	
	acomodarPalabra(matriz)
FinAlgoritmo


Funcion inicializarMatriz(matriz Por Referencia, f, c)
	Definir i, j Como Entero;
	
	Para i=0 Hasta f-1
		Para j=0 Hasta c-1
			matriz[i,j]="*";
		FinPara
	FinPara
FinFuncion


Funcion imprimirMatriz(matriz, f, c)
	Definir i, j Como Entero;
	
	Escribir "";
	
	Para i=0 Hasta f-1
		Para j=0 Hasta c-1
			Escribir matriz[i,j] " " Sin Saltar;
		FinPara
		Escribir "";
	FinPara
FinFuncion


Funcion agregarPalabra(matriz Por Referencia, a, c)
	Definir j, long Como Entero;
	Definir caracteresDePalabra Como Caracter;
	
	long= Longitud(palabra);
	
	Para j=0 Hasta long-1
		caracteresDePalabra= Subcadena(palabra, j, j)
		matriz[count,j]= Mayusculas(caracteresDePalabra);
	FinPara
FinFuncion


Funcion posicion = buscarR(matriz, count)
	Definir j, contador, posicionF, posicionC Como Entero;
	contador=0;
	
	Hacer
		Para j=0 Hasta 11
			Si(matriz[count, j] == "R") Entonces
				posicionC= j;
				contador= contador+1
			FinSi
		FinPara
	Mientras Que (count == 0)
	
FinFuncion

Funcion acomodarPalabra(matriz Por Referencia)
	Definir f, c, posicion, inicioPalabra Como Entero
	Definir vectorPalabra Como Caracter
	Dimension vectorPalabra[12];
	
	posicion= buscarR(matriz, count);
	
	Para f=0 hasta 8
		Para c=0 hasta 11
			posicion= buscarR(matriz, f);
			inicioPalabra= 5 - posicion;
			vectorPalabra[c]=matriz[f,c];
		FinPara
	FinPara
	
	Para c=0 hasta 11
		Escribir vectorPalabra[c] " " Sin Saltar
	FinPara
	
FinFuncion



