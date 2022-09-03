//Realizar un programa que permita visualizar el resultado del producto de una matriz de
//enteros de 3x3 por un vector de 3 elementos. Los valores de la matriz y el vector pueden
//inicializarse evitando así el ingreso de datos por teclado.

Algoritmo sin_titulo
	Definir matriz, vector, i, j Como Entero;
	Dimension matriz[3,3], vector[3];
	
	llenado(matriz, vector);
	
	multiplicacion(matriz, vector);
FinAlgoritmo


Funcion llenado(matriz, vector)
	Definir i, j Como Entero
	
	Para i=0 Hasta 2
		vector[i]= Aleatorio(1,9);
		Para j=0 Hasta 2
			matriz[i,j]= Aleatorio(1,9);
		FinPara
	FinPara
	
	Escribir "Matriz";
	
	Para i=0 Hasta 2
		Para j=0 Hasta 2
			Escribir " " matriz[i,j] Sin Saltar
		FinPara
		Escribir "";
	FinPara
	
	Escribir ""
	Escribir "Vector"
	
	Para i=0 Hasta 2
		Escribir " " vector[i] 
	FinPara
	
	Escribir "";
	Escribir "";
FinFuncion


Funcion multiplicacion(matriz, vector)
	Definir i, j, aux, aux2 Como Entero;
	aux=0;
	aux2=0;
	
	Para i=0 Hasta 2
		
		Para j=0 Hasta 2
			Escribir vector[j] " * " matriz[i,j] Sin Saltar;
			aux= aux + (vector[j] * matriz[i,j]);
			aux2= aux2 + (vector[j] * matriz[i,j]);
			Escribir " = " aux
			aux= 0
			
		FinPara
		Escribir "";
	FinPara

	Escribir "Producto total: ", aux2;
FinFuncion
