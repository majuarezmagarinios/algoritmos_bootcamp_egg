//Crear un programa que calcule la suma de los enteros positivos pares desde N hasta 2.
//Chequear que si N es impar se muestre un mensaje de error.

Funcion retorno = sumaEnteros(n)
	Definir retorno Como Entero;
	
	Si(n == 2) Entonces
		retorno= 2;
		Escribir retorno " = " Sin Saltar;
	SiNo
		Si(n MOD 2 == 0) Entonces
			Escribir n " + " Sin Saltar
			retorno= n + sumaEnteros(n-1);
		SiNo
			retorno= sumaEnteros(n-1);
		FinSi
	FinSi
FinFuncion


Algoritmo sin_titulo
	Definir n Como Entero;

	Escribir "Ingrese un n�mero, sumaremos los enteros pares anteriores a �l" Sin Saltar;
	Leer n;
	
	Si (n MOD 2 == 0) Entonces
		Escribir  sumaEnteros(n);
	SiNo
		Escribir "Error: el n�mero debe ser par";
	Fin Si
FinAlgoritmo


