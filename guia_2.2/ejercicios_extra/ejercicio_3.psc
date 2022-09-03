//	Escriba un programa que solicite al usuario números decimales mientras que el usuario
//	escriba números mayores al primero que se ingresó. Por ejemplo: si el usuario ingresa
//	como primer número un 3.1, y luego ingresa un 4, el programa debe solicitar un tercer
//	número. El programa continuará solicitando valores sucesivamente mientras los valores
//	ingresados sean mayores que 3.1, caso contrario, el programa finaliza.

Algoritmo sin_titulo
	Definir numUser, numAux Como Real;
	numUser= 0;

	Escribir "Escribe un número =" Sin Saltar;
	Leer numUser;
	numAux= numUser+1
	
	Mientras (numUser < numAux) Hacer
		Escribir "Escribe un número =" Sin Saltar;
		Leer numAux
		si(numUser > numAux) Entonces
			Escribir ""
			Escribir numAux, " es menor que ", numUser, " que fue el nro. que elegiste";
			Escribir "Por lo tanto finaliza la aplicación";
		FinSi
	FinMientras
	
FinAlgoritmo
