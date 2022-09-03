//	Escribir un programa que realice la búsqueda lineal de un número entero ingresado por el
//	usuario en una matriz de 5x5, llena de números aleatorios y devuelva por pantalla las
//	coordenadas donde se encuentra el valor, es decir en que fila y columna se encuentra. En
//	caso de no encontrar el valor dentro de la matriz se debe mostrar un mensaje.

Funcion retorno <- busquedaN(n)
	Dimension matriz[5,5];
	Definir retorno, matriz, i, j Como Entero;
	Definir x Como Logico;
	x=falso;
	
	Para i=0 Hasta 4
		Para j=0 Hasta 4
			matriz(i,j)= azar(9);
		Fin Para
	Fin Para
	
	Para i=0 Hasta 4
		Para j=0 Hasta 4
			Escribir  matriz(i,j) " " Sin Saltar	
		Fin Para
		Escribir "";
	Fin Para
	
	Escribir "";
	
	Para i=0 Hasta 4
		Para j=0 Hasta 4	
			Si(matriz(i,j) == n) Entonces
				Escribir "Coincidencia en fila: ", i, " columna: ", j;
				x=verdadero;
			FinSi		
		Fin Para
	Fin Para
	
	Si(!x) Entonces
		Escribir "No se encontraron conincidencias"
	FinSi
Fin Funcion


Algoritmo sin_titulo
	definir resultado, n Como Entero;
	
	Escribir "Ingresa un número a buscar dentro de la matriz";
	Leer n;
	
	resultado= busquedaN(n);
FinAlgoritmo


