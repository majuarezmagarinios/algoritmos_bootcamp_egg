//	Escribir un programa que calcule cu�ntos d�gitos tiene un n�mero entero positivo sin
//	convertirlo a cadena (pista: se puede hacer dividiendo varias veces entre 10). Nota:
//	investigar la funci�n trunc().

Algoritmo sin_titulo
	Definir n, c, d Como Entero;
	c=0;
	
	Escribir "Ingresa un numero entero positivo mayor a 0";
	Leer n;
	d= n;
	
	Mientras (n < 0) Hacer
		Escribir "El n�mero debe ser un entero mayor a 0";
		Escribir "Intentalo nuevamente" Sin Saltar;
		Leer n;
	Fin Mientras
	
	Mientras (n <> 0) Hacer
		n = trunc(n / 10);
		c= c + 1;
	Fin Mientras
	
	Escribir "El n�mero ", d, " posee ", c, " digitos";
FinAlgoritmo