//Realizar un programa que rellene una matriz de 3x3 con 9 valores ingresados por el usuario y
//los muestre por pantalla.

Algoritmo sin_titulo
	Dimension matriz[3,3];
	Definir matriz, i, x, valores como entero;
	
	Escribir "Ingresa valores";
	
	Para i=0 hasta 2 
		Para x=0 Hasta 2
			Leer valores;
			matriz[i,x]= valores
		FinPara
	FinPara
	
	para i=0 Hasta 2
		Escribir "Fila ", i;
		para x=0 hasta 2
			Escribir matriz[i,x] Sin Saltar 
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo
