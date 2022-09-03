//	Programar un juego donde la computadora elige un n�mero al azar entre 1 y 10, y a
//	continuaci�n el jugador tiene que adivinarlo. La estructura del programa es la siguiente:
//	1o) El programa elige al azar un n�mero n entre 1 y 10.
//	2o) El usuario ingresa un n�mero x.
//	3o) Si x no es el n�mero exacto, el programa indica si n es m�s grande o m�s peque�o que
//	el n�mero ingresado.
//	4o) Repetimos desde 2) hasta que x sea igual a n.
//	El programa tiene que imprimir los mensajes adecuados para informarle al usuario qu�
//	hacer y qu� pas� hasta que adivine el n�mero.
//	NOTA: Para generar un n�mero aleatorio entre 1 y 10 se puede utilizar la funci�n
//	Aleatorio(limite_inferior, limite_superior) de PseInt.



Algoritmo sin_titulo
	
	Definir numUser, numComp Como Entero;
//	Se genera un numero al azar que ser� el de la app
	numComp = azar(10);
	
//	Para conocer el numero elegido por la apliaci�n
//	Escribir "El n�mero elegido por la app es: ", numComp
	
	Repetir
//  Se solicita al usuario cargar un n�mero
		Escribir "Adivina el n�mero que estoy pensando, esta entre el 1 y el 10";
		Leer numUser;
		
//	Se compara ambos n�meros por menor, mayor o igual
		Si(numUser < numComp) Entonces
			Escribir "Indicaste un n�mero menor al que yo eleg�";
			Escribir ""
		SiNo
			Si(numUser > numComp) Entonces
				Escribir "Elegiste un n�mero mayor al que yo eleg�"
				Escribir ""
			SiNo
				Si(numUser = numComp) Entonces
					Escribir "En hora buena, acertaste el n�mero era: ", numComp
					Escribir ""
				FinSi
			FinSi
		FinSi
		
//	Si los n�meros no coinciden se sigue ejecutando el bucle hasta que el usuario cargue el mismo n�mero que eligi� la app
	Mientras Que (numUser <> numComp)
	
FinAlgoritmo
