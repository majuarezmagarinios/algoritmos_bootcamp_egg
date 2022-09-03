//	Realizar una funci�n que reciba un numero ingresado por el usuario y averig�e si el n�mero es
//	capic�a o no (Por ejemplo: 12321). Nota: recordar el uso del MOD y el Trunc. No podemos
//	transformar el numero a cadena para realizar el ejercicio.



Funcion retorno <- capicua( num )
	Definir retorno, numAux, numNuevo, i Como Entero;
	numAux= num;
	retorno= 0;
	
	
	Mientras (numAux > 0) Hacer
		retorno= retorno * 10 + (numAux MOD 10);
		numAux= trunc(numAux/10);
	Fin Mientras
	
	Si(num == retorno) Entonces
		Escribir retorno, " es capicua";
	SiNo
		Escribir retorno, " no es capicua";
	FinSi

Fin Funcion

Algoritmo sin_titulo
	Definir resultado, num Como Entero;
	
	Escribir "Ingrese un n�mero, le diremos si es capicua", Sin Saltar;
	Leer num;
	
	resultado= capicua(num);
	
FinAlgoritmo
