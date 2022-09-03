//Realizar un procedimiento que permita intercambiar el valor de dos variables de tipo entero.
//La variable A, debe terminar con el valor de la variable B.

Algoritmo sin_titulo
	Definir a Como Entero;
	a= 0;
	
	Escribir "El valor de a antes del subproceso es: ", a;
	interc(a);
	
	Escribir "El valor de a después del subproceso es:", a;
FinAlgoritmo

SubProceso interc(a Por Referencia)
	Definir b Como Entero;
	b= 1;
	a= b;
FinSubProceso
