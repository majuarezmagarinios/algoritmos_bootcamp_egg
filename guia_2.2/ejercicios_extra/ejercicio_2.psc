//Escriba un programa que solicite dos n�meros enteros (m�nimo y m�ximo). A continuaci�n,
//se debe pedir al usuario que ingrese n�meros enteros situados entre el m�ximo y m�nimo.
//Cada vez que un n�mero se encuentre entre ese intervalo, se sumara uno a una variable.
//El programa terminar� cuando se escriba un n�mero que no pertenezca a ese intervalo, y
//al finalizar se debe mostrar por pantalla la cantidad de n�meros ingresados dentro del
//intervalo.

Algoritmo sin_titulo
	Definir num1, num2, numInter, count Como Entero
	num1= 0;
	num2= 2;
	numInter = 1;
	count= 1;
	
//	Solicito los numeros para establecer el rango	
	Escribir "Ingresa los numeros para determinar el rango "
	Leer num1, num2;
	Escribir "" ;
	
//	Solicito el primer numero dentro del rango elegido
	Escribir "Ingresa n�meros enteros comprendidos entre el ", num1, " hasta el " num2;
	Leer numInter
	Escribir "Ingresate el ", numInter
	Escribir "" 
	
//	Utilizo el numInter para evaluar si esta entre el rango que establecio el usuario. VERDADERO: continua solicitandolo, FALSO: termina el bucle
	Mientras ((numInter >= num1) Y (numInter <= num2)) Hacer	
		Escribir "Ingresa n�meros enteros comprendidos entre el ", num1, " hasta el " num2;
		Leer numInter;
		Escribir "Ingresate el ", numInter
		Escribir "" 
		
//		Mostrara las vueltas del bucle y a esas vueltas le sumara uno ya que se solicito un numero dentro del rango por fuera del bucle
		count= count +1;	
	Fin Mientras
	
	
//	Muestro la cantidad de n�meros ingresados
	Escribir "La cantidad de n�meros ingresados fue: ", count;
FinAlgoritmo
