//Realizar un programa que rellene un vector de tama�o N, con valores ingresados por el
//usuario. A continuaci�n, se deber� crear una funci�n que reciba el vector y devuelva el valor
//m�s grande del vector.

Algoritmo sin_titulo
	Definir i, vector, size, n, mayor Como Entero
	
	Escribir "Add vector size"
	Leer size;
	
	Dimension vector[size];
	
	Escribir "Add the numbers"
	
	Para i=0 Hasta (size-1) Hacer
		Leer n;
		vector[i]= n
	Fin Para
	
	mayor= vector[0];
	
	Para i=0 Hasta (size-1) Con Paso 1 Hacer
		Si(mayor < vector[i]) Entonces
			mayor= vector[i];
		FinSi
	Fin Para
	
	Escribir "Mayor ", mayor
FinAlgoritmo
