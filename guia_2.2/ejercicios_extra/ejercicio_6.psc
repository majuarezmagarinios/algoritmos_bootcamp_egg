//Realizar un programa que solicite al usuario su código de usuario (un número entero
//mayor que cero) y su contraseña numérica (otro número entero positivo). El programa no
//le debe permitir continuar hasta que introduzca como código 1024 y como contraseña
//4567. El programa finaliza cuando ingresa los datos correctos.


Algoritmo sin_titulo
	Definir coun, codeUser, passUser Como Entero;
	coun= 0;
	
	Repetir
		Si(coun > 0) Entonces
			Escribir "Ingresaste incorrectamente el usuario o la contraseña"
		FinSi
		
		Escribir "Ingresa tu usuario y a continuación tu contraseña";
		Leer codeUser, passUser
		coun= coun + 1;
	Mientras Que ((codeUser <> 1024) Y (passUser <> 4567))
	
FinAlgoritmo
