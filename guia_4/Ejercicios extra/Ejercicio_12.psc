//Realizar un programa que calcule la multiplicación de dos matrices de enteros de 3x3.
//Inicialice las matrices para evitar el ingreso de datos por teclado.

Algoritmo sin_titulo
	Definir matriz1, matriz2, n Como Entero
	n=3;
	Dimension matriz1[n,n], matriz2[n,n];
	
	llenarMatriz(matriz1, matriz2, n);

	Escribir "";
	Escribir "Total multiplicación: matriz1 => ";
	multRecMatriz(matriz1, matriz2, n)
	
FinAlgoritmo


Funcion llenarMatriz(matriz1 Por Referencia, matriz2 Por Referencia, n)
	Definir i,j Como Entero

	Para i=0 Hasta n-1
		Para j=0 Hasta n-1
			matriz1[i,j]=Aleatorio(1,2);
			matriz2[i,j]=Aleatorio(1,2);
		FinPara
		
	FinPara
FinFuncion


Funcion multRecMatriz(matriz1, matriz2, n)
	Definir total, aux, i, j Como Entero;
	total=0;
	aux=1;
	
	Para i=0 Hasta n-1
		Para j=0 Hasta n-1
			Escribir " " matriz1[i,j] Sin Saltar
		FinPara
		Escribir ""
	FinPara
	
	Escribir ""
	
	Para i=0 Hasta n-1
		Para j=0 Hasta n-1
			Escribir " " matriz2[i,j] Sin Saltar
		FinPara
		Escribir ""
	FinPara
	
	Escribir ""
	
	Para i=0 Hasta n-1
		Para j=0 Hasta n-1
			Escribir matriz1[i,j] " * " matriz2[i,j]  Sin Saltar;
			total= matriz1[i,j] * matriz2[i,j];
			aux= aux * total
			Escribir " = ", total;
		FinPara
		Escribir ""
	FinPara
	
	Escribir aux
FinFuncion
	