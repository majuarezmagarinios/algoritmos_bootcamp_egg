//Realizar un programa que solicite al usuario su c�digo de usuario (un n�mero entero
//mayor que cero) y su contrase�a num�rica (otro n�mero entero positivo). El programa no
//le debe permitir continuar hasta que introduzca como c�digo 1024 y como contrase�a
//4567. El programa finaliza cuando ingresa los datos correctos.


Algoritmo sin_titulo
	Definir coun, codeUser, passUser Como Entero;
	coun= 0;
	
	Repetir
		Si(coun > 0) Entonces
			Escribir "Ingresaste incorrectamente el usuario o la contrase�a"
		FinSi
		
		Escribir "Ingresa tu usuario y a continuaci�n tu contrase�a";
		Leer codeUser, passUser
		coun= coun + 1;
	Mientras Que ((codeUser <> 1024) Y (passUser <> 4567))
	
FinAlgoritmo
