

//	Realizar una funci�n que calcule la suma de dos n�meros. En el algoritmo principal le
//	pediremos al usuario los dos n�meros para pas�rselos a la funci�n. Despu�s la funci�n
//	calcular� la suma y lo devolver� para imprimirlo en el algoritmo.

Algoritmo sin_titulo
	Definir num1, num2, resultado Como Entero;
	
	
	Escribir "Ingresa un numero y luego otro";
	Leer num1, num2;
	
	resultado= suma(num1, num2)
	
	Escribir "Resultado: " resultado;
	
FinAlgoritmo


Funcion resu <- suma( num1, num2)
	Definir resu Como Entero;
	resu= num1 + num2;
Fin Funcion