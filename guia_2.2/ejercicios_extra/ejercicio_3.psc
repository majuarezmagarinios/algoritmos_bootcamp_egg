//	Escriba un programa que solicite al usuario n�meros decimales mientras que el usuario
//	escriba n�meros mayores al primero que se ingres�. Por ejemplo: si el usuario ingresa
//	como primer n�mero un 3.1, y luego ingresa un 4, el programa debe solicitar un tercer
//	n�mero. El programa continuar� solicitando valores sucesivamente mientras los valores
//	ingresados sean mayores que 3.1, caso contrario, el programa finaliza.

Algoritmo sin_titulo
	Definir numUser, numAux Como Real;
	numUser= 0;

	Escribir "Escribe un n�mero =" Sin Saltar;
	Leer numUser;
	numAux= numUser+1
	
	Mientras (numUser < numAux) Hacer
		Escribir "Escribe un n�mero =" Sin Saltar;
		Leer numAux
		si(numUser > numAux) Entonces
			Escribir ""
			Escribir numAux, " es menor que ", numUser, " que fue el nro. que elegiste";
			Escribir "Por lo tanto finaliza la aplicaci�n";
		FinSi
	FinMientras
	
FinAlgoritmo
