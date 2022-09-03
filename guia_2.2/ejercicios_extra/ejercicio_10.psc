//	Programar un juego donde la computadora elige un número al azar entre 1 y 10, y a
//	continuación el jugador tiene que adivinarlo. La estructura del programa es la siguiente:
//	1o) El programa elige al azar un número n entre 1 y 10.
//	2o) El usuario ingresa un número x.
//	3o) Si x no es el número exacto, el programa indica si n es más grande o más pequeño que
//	el número ingresado.
//	4o) Repetimos desde 2) hasta que x sea igual a n.
//	El programa tiene que imprimir los mensajes adecuados para informarle al usuario qué
//	hacer y qué pasó hasta que adivine el número.
//	NOTA: Para generar un número aleatorio entre 1 y 10 se puede utilizar la función
//	Aleatorio(limite_inferior, limite_superior) de PseInt.



Algoritmo sin_titulo
	
	Definir numUser, numComp Como Entero;
//	Se genera un numero al azar que será el de la app
	numComp = azar(10);
	
//	Para conocer el numero elegido por la apliación
//	Escribir "El número elegido por la app es: ", numComp
	
	Repetir
//  Se solicita al usuario cargar un número
		Escribir "Adivina el número que estoy pensando, esta entre el 1 y el 10";
		Leer numUser;
		
//	Se compara ambos números por menor, mayor o igual
		Si(numUser < numComp) Entonces
			Escribir "Indicaste un número menor al que yo elegí";
			Escribir ""
		SiNo
			Si(numUser > numComp) Entonces
				Escribir "Elegiste un número mayor al que yo elegí"
				Escribir ""
			SiNo
				Si(numUser = numComp) Entonces
					Escribir "En hora buena, acertaste el número era: ", numComp
					Escribir ""
				FinSi
			FinSi
		FinSi
		
//	Si los números no coinciden se sigue ejecutando el bucle hasta que el usuario cargue el mismo número que eligió la app
	Mientras Que (numUser <> numComp)
	
FinAlgoritmo
