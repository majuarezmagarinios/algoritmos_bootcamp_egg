//	Realizar un programa que lea 10 n�meros reales por teclado, los almacene en un arreglo y
//	muestre por pantalla la suma, resta y multiplicaci�n de todos los n�meros ingresados al
//	arreglo.

Algoritmo sin_titulo
	Definir i Como Entero;
	Definir vector, suma, resta, multip Como Real;
	Dimension vector[10];
	
	suma= 0;
	resta= 0;
	multip= 1;
	
	Escribir "Ingresese 10 nros";
	
	Para i=0 hasta 9 Con Paso 1 hasta
		Leer vector[i];
		suma= suma + vector[i]
		
		Si(i == 0) Entonces
			resta= vector[i]
		sino
			resta= resta - vector[i];
		FinSi
		
		multip= multip * vector[i]
	FinPara
	
	Escribir "Suma ", suma;
	Escribir "Resta ", resta;
	Escribir "Multiplicaci�n ", multip
FinAlgoritmo
