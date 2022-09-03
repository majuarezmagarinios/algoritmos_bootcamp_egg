//	Crear una matriz que contenga 3 columnas y la cantidad filas que decida el usuario. Las dos
//	primeras columnas contendrán valores enteros ingresados por el usuario y en la 3 columna se
//	deberá almacenar el resultado de sumar el número de la primera y segunda columna. Mostrar
//	la matriz de la siguiente forma:
//		3 + 5 = 8
//		4 + 3 = 7
//		1 + 4 = 5

Algoritmo sin_titulo
	Definir matriz, f, c Como Entero
	c=2;
	
	Escribir "Ingrese la cantidad de filas" Sin Saltar;
	Leer f;
	
	Dimension matriz[f,c];
	
	llenarMatriz(matriz, f, c);
	sumaMatriz(matriz, f, c);
FinAlgoritmo


Funcion llenarMatriz(matriz Por Referencia, f, c)
	Definir i, j Como Entero;
	
	Para i=0 Hasta f-1
		Para j=0 Hasta c-1
			Escribir "Ingresa el valor ", j + 1 ": " Sin Saltar;
			Leer matriz[i,j]
		FinPara
		Escribir "";
	FinPara
FinFuncion


Funcion sumaMatriz(matriz, f, c)
	Definir i, j, aux, aux2 Como Entero;
	aux= 0
	aux2=0
	Escribir ""
	
	Para i=0 Hasta f-1
		Para j=0 Hasta c-2
			Escribir matriz[i,j] " + " matriz[i,j+1] Sin Saltar;
			aux= aux + matriz[i,j] + matriz[i,j+1];
			aux2= aux2 + matriz[i,j] + matriz[i,j+1];
			Escribir " = ", aux Sin Saltar;
		FinPara
		Escribir ""
		aux= 0
	FinPara
	
	Escribir "Total: ", aux2;
FinFuncion
	