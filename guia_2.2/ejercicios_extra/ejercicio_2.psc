//Escriba un programa que solicite dos números enteros (mínimo y máximo). A continuación,
//se debe pedir al usuario que ingrese números enteros situados entre el máximo y mínimo.
//Cada vez que un número se encuentre entre ese intervalo, se sumara uno a una variable.
//El programa terminará cuando se escriba un número que no pertenezca a ese intervalo, y
//al finalizar se debe mostrar por pantalla la cantidad de números ingresados dentro del
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
	Escribir "Ingresa números enteros comprendidos entre el ", num1, " hasta el " num2;
	Leer numInter
	Escribir "Ingresate el ", numInter
	Escribir "" 
	
//	Utilizo el numInter para evaluar si esta entre el rango que establecio el usuario. VERDADERO: continua solicitandolo, FALSO: termina el bucle
	Mientras ((numInter >= num1) Y (numInter <= num2)) Hacer	
		Escribir "Ingresa números enteros comprendidos entre el ", num1, " hasta el " num2;
		Leer numInter;
		Escribir "Ingresate el ", numInter
		Escribir "" 
		
//		Mostrara las vueltas del bucle y a esas vueltas le sumara uno ya que se solicito un numero dentro del rango por fuera del bucle
		count= count +1;	
	Fin Mientras
	
	
//	Muestro la cantidad de números ingresados
	Escribir "La cantidad de números ingresados fue: ", count;
FinAlgoritmo
