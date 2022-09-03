//Realizar un programa que rellene de números aleatorios una matriz a través de un
//subprograma y generar otro subprograma que muestre por pantalla la matriz final.

Algoritmo sin_titulo
	Definir matriz, n Como Entero;
	
	Escribir "Ingrese el tamaño de la matriz";
	Leer n;
	
	Dimension matriz[n,n];
	
	llenarMatriz(matriz,n);
	
	Escribir "Los números de la matriz son: ";
	mostrarMatriz(matriz, n);	
FinAlgoritmo


Funcion llenarMatriz(matriz Por Referencia, n)
	Definir i, j Como Entero;
	
	Para i=0 Hasta n-1
		Para j=0 Hasta n-1
			matriz[i,j]= Aleatorio(0, 100);
		FinPara
	FinPara
FinFuncion

Funcion mostrarMatriz(matriz, n)
	Definir i, j Como Entero
	
	Para i=0 Hasta n-1
		Para j=0 Hasta n-1
			Escribir "  ", matriz[i,j] Sin Saltar
		FinPara
		Escribir "";
	FinPara 
FinFuncion
	