//Crear una matriz de orden n * m (donde n y m son valores ingresados por el usuario), llenarla
//con números aleatorios entre 1 y 100 y mostrar su traspuesta.
//¿Qué es una Matriz Traspuesta?
//La matriz traspuesta de una matriz A se denota por B y se obtiene cambiando sus filas por
//columnas (o viceversa).
//
//Matriz A = è Matriz B =
//
//Ejemplo: Obsérvese, por ejemplo, que la primera fila de la matriz A es (1,0,4). Esta fila es la
//	primera columna de su matriz traspuesta.

Algoritmo sin_titulo
	Definir matriz1, matriz2, n, m Como Entero;
	
	Escribir "Ingrese el tamaño n de la matriz";
	Leer n;
	
	Escribir "Ingrese el tamaño m de la matriz";
	Leer m;
	
	Dimension matriz1[n,m];
	Dimension matriz2[n,m];
	
	llenarMatriz(matriz1, matriz2, n, m);
	
	Escribir "Los números de la matriz son: ";
	mostrarMatriz(matriz1, matriz2, n, m);	
FinAlgoritmo


Funcion llenarMatriz(matriz1 Por Referencia, matriz2 Por Referencia, n, m)
	Definir i, j Como Entero;
	
	Para i=0 Hasta n-1
		Para j=0 Hasta m-1
			matriz1[i,j]= Aleatorio(1, 100);
			matriz2[j,i]= matriz1[i,j];
		FinPara
	FinPara
FinFuncion


Funcion mostrarMatriz(matriz1, matriz2, n, m)
	Definir i, j Como Entero
	
	Para i=0 Hasta n-1
		Para j=0 Hasta m-1
			Escribir matriz2[j,i], " " Sin Saltar
		FinPara
		Escribir "";
	FinPara 
	
	Escribir ""
	
	Para i=0 Hasta n-1
		Para j=0 Hasta m-1
			Escribir matriz2[i,j], " " Sin Saltar
		FinPara
		Escribir "";
	FinPara 
	Escribir ""
	
FinFuncion