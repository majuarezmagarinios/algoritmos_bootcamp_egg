//	Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número es
//	primo o no. Un número es primo cuando es divisible sólo por 1 y por sí mismo, por ejemplo: 2,
//	3, 5, 7, 11, 13, 17, etc. Nota: recordar el uso del MOD.

//NOTA IMPORTANTE: LOS NÚMEROS PRIMOS NO SON LOS QUE LA DIVISION DA 0 SINO LOS QUE NO TIENEN MAS DE 2 DIVISORES
//POR EJEMPLO 57 no es un número primo ya que además de ser divisible por 1 y por sí mismo, también es divisible por 3 y por 19.

Algoritmo sin_titulo
	Definir num, resultado Como Entero;
	
	Escribir "Ingrese un número" Sin Saltar;
	Leer num;
	
	resultado= divisible(num);
	
	Si((resultado == 2) O (resultado == 1)) Entonces
		Escribir num, " es primo"
	SiNo
		Escribir num, " NO es primo";
	FinSi
	
FinAlgoritmo


Funcion count <- divisible(num)
	Definir i, count Como Entero;
	count= 0;
	
	Para i=1 Hasta num Con Paso 1 Hacer
		Si(num  % i = 0) Entonces
			count= count + 1;
		FinSi
	FinPara

Fin Funcion
