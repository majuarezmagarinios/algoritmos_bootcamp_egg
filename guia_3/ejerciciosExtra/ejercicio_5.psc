//	Realizar una función que calcule la suma de los dígitos de un número.
//	Ejemplo: 25 = 2 + 5 = 7
//	Nota: Para obtener el último número de un digito de 2 cifras o más debemos pensar en el
//	resto de una división entre 10. Recordar el uso de la función Mod y Trunc.

Funcion retorno <- sumDigitos (num)
	Definir retorno, priDigi, segDigi Como Entero;
	
	priDigi=trunc(num / 10) 
	segDigi=(num mod 10)
	retorno= (priDigi + segDigi);
	Escribir priDigi, " + ", segDigi, " = ", retorno;
Fin Funcion


Algoritmo sin_titulo
	Definir num, resultado Como Entero;
	
	Escribir "Ingrese un número al cual le sumaremos sus digitos";
	Leer num;
	
	resultado= sumDigitos(num);	
FinAlgoritmo
