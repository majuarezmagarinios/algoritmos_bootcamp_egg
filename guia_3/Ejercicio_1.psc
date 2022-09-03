

//	Realizar una función que calcule la suma de dos números. En el algoritmo principal le
//	pediremos al usuario los dos números para pasárselos a la función. Después la función
//	calculará la suma y lo devolverá para imprimirlo en el algoritmo.

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