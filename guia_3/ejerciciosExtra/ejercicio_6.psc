//	Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número
//	tiene todos sus dígitos impares (ejemplo: 333, 55, etc.). Para esto vamos a tener que separar el
//	numero en partes (si es un numero de más de un digito) y ver si cada número es par o impar.
//	Nota: recordar el uso de la función Mod y Trunc(). No podemos pasar el numero a cadena para
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
	
	Escribir "Ingrese un número para saber cuales digitos son pares y cuales no";
	Leer num;
	
	resultado= digitImp(num);	
FinAlgoritmo
