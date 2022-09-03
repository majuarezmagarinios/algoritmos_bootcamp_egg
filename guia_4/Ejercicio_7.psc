//	Crear un subproceso que rellene dos arreglos de tama�o n, con n�meros aleatorios. Despu�s,
//	hacer una funci�n que reciba los dos arreglos y diga si todos sus valores son iguales o no. La
//	funci�n debe devolver el resultado de est� validaci�n, para mostrar el mensaje en el algoritmo.
//	Nota: recordar el uso de las variables de tipo l�gico.

Algoritmo sin_titulo
	Definir resultado Como Logico;
	resultado= vectores();
	
FinAlgoritmo


Funcion retornar = vectores()
	Definir vector1, vector2, i, n Como Entero;
	Definir retornar Como Logico;
	
	Escribir "Ingrese la dimensi�n del arreglo";
	Leer n;
	
	Dimension vector1[n], vector2[n];
	
	Para i=0 Hasta n-1
		vector1[i]= Aleatorio(0,100);
		vector2[i]= Aleatorio(0,100);
	Fin Para
	
	retornar= validar (vector1, vector2, n)	
FinFuncion


Funcion retorno <- validar (vector1, vector2, n)
	Definir i, j, count Como Entero;
	Definir retorno Como Logico;
	count=0;
	
	Para i=0 Hasta n-1 
		Si(vector1[i] == vector2[i]) Entonces
			count=count+1;
		FinSi
	Fin Para
	
	Escribir "Vector 1: " Sin Saltar;
	Para i=0 Hasta (n-1) 
		Escribir  vector1[i] " " Sin Saltar
	Fin Para
	
	Escribir "";
	
	Escribir "Vector 2: " Sin Saltar;
	Para j=0 hasta n-1
		Escribir vector2[j], " " Sin Saltar;
	FinPara
	
	Escribir "";
	Escribir "";
	
	Si(count == n) Entonces
		Escribir "Los valores coinciden";
	SiNo
		Escribir "Los valores no coinciden";
	FinSi
Fin Funcion