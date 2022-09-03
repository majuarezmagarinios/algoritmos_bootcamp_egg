//	Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
//	usuario y muestre por pantalla el promedio de la retorno de todos los valores ingresados.

Funcion retorno <- promedio(n)
	Definir retorno, vector, i, j Como Entero;
	Dimension vector[n];
	retorno=0;
	
	Para i=0 hasta n-1
		vector[i]= azar(9);
		
	FinPara
	
	Para j=0 Hasta n-1
		Si(j == n-1) Entonces
			Escribir vector[j], " = " Sin Saltar
		SiNo
			Escribir vector[j], " + " Sin Saltar
		FinSi
		retorno= retorno + vector[j];
		
	FinPara
Fin Funcion


Algoritmo sin_titulo
	Definir n Como Entero;
	
	Escribir "Ingrese la dimension de la matriz";
	Leer n
	
	Escribir promedio(n);
FinAlgoritmo
