//	Realizar una funci�n que reciba un numero ingresado por el usuario y averig�e si el n�mero
//	tiene todos sus d�gitos impares (ejemplo: 333, 55, etc.). Para esto vamos a tener que separar el
//	numero en partes (si es un numero de m�s de un digito) y ver si cada n�mero es par o impar.
//	Nota: recordar el uso de la funci�n Mod y Trunc(). No podemos pasar el numero a cadena para
//	realizar el ejercicio.


Funcion retorno <- digitImp (num)
	Definir retorno, result Como real;
	
	Mientras (num > 0) Hacer
		result= num mod 10;
		num= trunc(num/10);
		
		Si(result MOD 2 <> 0) Entonces
			Escribir result, " es impar";
		SiNo
			Escribir result, " es par";
		FinSi
		
	Fin Mientras
Fin Funcion

Algoritmo sin_titulo
	Definir resultado Como Entero;
	Definir num Como Real;
	
	Escribir "Ingrese un n�mero para saber cuales digitos son pares y cuales no";
	Leer num;
	
	resultado= digitImp(num);	
FinAlgoritmo
