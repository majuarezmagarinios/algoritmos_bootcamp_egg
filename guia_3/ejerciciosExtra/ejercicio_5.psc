//	Realizar una funci�n que calcule la suma de los d�gitos de un n�mero.
//	Ejemplo: 25 = 2 + 5 = 7
//	Nota: Para obtener el �ltimo n�mero de un digito de 2 cifras o m�s debemos pensar en el
//	resto de una divisi�n entre 10. Recordar el uso de la funci�n Mod y Trunc.

Funcion retorno <- sumDigitos (num)
	Definir retorno, priDigi, segDigi Como Entero;
	
	priDigi=trunc(num / 10) 
	segDigi=(num mod 10)
	retorno= (priDigi + segDigi);
	Escribir priDigi, " + ", segDigi, " = ", retorno;
Fin Funcion


Algoritmo sin_titulo
	Definir num, resultado Como Entero;
	
	Escribir "Ingrese un n�mero al cual le sumaremos sus digitos";
	Leer num;
	
	resultado= sumDigitos(num);	
FinAlgoritmo
