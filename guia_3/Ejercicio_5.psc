//	Realizar una funci�n que reciba un numero ingresado por el usuario y averig�e si el n�mero es
//	primo o no. Un n�mero es primo cuando es divisible s�lo por 1 y por s� mismo, por ejemplo: 2,
//	3, 5, 7, 11, 13, 17, etc. Nota: recordar el uso del MOD.

//NOTA IMPORTANTE: LOS N�MEROS PRIMOS NO SON LOS QUE LA DIVISION DA 0 SINO LOS QUE NO TIENEN MAS DE 2 DIVISORES
//POR EJEMPLO 57 no es un n�mero primo ya que adem�s de ser divisible por 1 y por s� mismo, tambi�n es divisible por 3 y por 19.

Algoritmo sin_titulo
	Definir num, resultado Como Entero;
	
	Escribir "Ingrese un n�mero" Sin Saltar;
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
