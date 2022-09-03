//Realizar un programa que rellene dos vectores al mismo tiempo, con 5 valores aleatorios y los
//muestre por pantalla.

Algoritmo sin_titulo
	Definir vector1, vector2, i, j Como Entero
	Dimension vector1[5], vector2[5];
	
	Escribir "Valores de vecotr1: ", Sin Saltar;
	Para i=0 hasta 4
		vector1[i]= azar(10);
		vector2[i]= azar(10);
		Escribir vector1[i], " " Sin Saltar;
	FinPara
	
	Escribir ""
	
	Escribir "Valores de vecotr2: " Sin Saltar;
	Para j=0 hasta 4
		Escribir vector2[j] " " Sin Saltar;
	FinPara
	
FinAlgoritmo
