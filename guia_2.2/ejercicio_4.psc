//	Teniendo en cuenta que la clave es "eureka", escribir un programa que nos pida ingresar
//	una clave. S�lo se cuenta con 3 intentos para acertar, si fallamos los 3 intentos se deber�
//	mostrar un mensaje indic�ndonos que hemos agotado esos 3 intentos. Si acertamos la
//	clave se deber� mostrar un mensaje que indique que se ha ingresado al sistema
//	correctamente.

Algoritmo sin_titulo
	Definir contador Como Entero
	Definir clave Como Caracter
	Definir acierto Como Logico
	contador=0
	acierto= falso;

	
		Repetir
			Escribir "Escribe tu contrase�a"
			Leer clave
			Si(clave = "eureka") Entonces
				Escribir "la clave es correcta"
				acierto= verdadero;
			FinSi
			contador= contador +1
		Mientras Que ((contador < 3) Y (acierto= Falso ))
		
		si (contador=3 Y acierto=falso) Entonces
			Escribir "Ya no tienes mas intentos"
		FinSi
		
	
FinAlgoritmo
