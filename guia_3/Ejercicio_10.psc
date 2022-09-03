//Escribir una función recursiva que devuelva la suma de los primeros N enteros.
Funcion s = sumaRecursiva (n)
	Definir s, a Como Entero;
	s= 0;
	
	Si(n == 0) Entonces
		Escribir "Fin app";
	SiNo
		a= sumaRecursiva(n - 1);
		s= n + a;
		Escribir n, " + ", a " = " s;
	FinSi
Fin Funcion


Algoritmo sin_titulo
	Definir n, resultado Como Entero;
	
	Escribir "Ingresa el número hasta el cual se sumaran los anteriores números";
	Leer n;
	
	resultado= sumaRecursiva(n);
FinAlgoritmo


