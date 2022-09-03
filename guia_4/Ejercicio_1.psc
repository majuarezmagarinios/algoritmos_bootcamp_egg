//Realizar un programa que rellene un vector con 5 valores ingresados por el usuario y los
//muestre por pantalla.

Algoritmo sin_titulo
	Definir i, valores Como Entero;
	Dimension valores[5];
	
	
	Escribir "Ingrese 5 números";
	
	
	Para i=0 Hasta 4 Con Paso 1 Hacer
		Leer valores[i];
	FinPara
	
	Escribir "Los números ingresados son: " Sin Saltar;
	
	Para i=0 Hasta 4 Con Paso 1 Hacer
		 Escribir valores[i] " " Sin Saltar;
	FinPara
	
FinAlgoritmo
