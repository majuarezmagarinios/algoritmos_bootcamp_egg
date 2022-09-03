//	Escriba un programa en el cual se ingrese un valor límite positivo, y a continuación solicite
//	números al usuario hasta que la suma de los números introducidos supere el límite inicial.

Algoritmo sin_titulo
	Definir valorLimite, num1, num2, i, iteraciones Como Entero
	Escribir "Ingresa un valor limite"
	Leer valorLimite;
	
	Escribir "Ingresa dos numeros"
	Leer num1, num2
	
	iteraciones= 0;
	Para i=valorLimite Hasta num1+num2  Hacer
		iteraciones= iteraciones+1
	Fin Para
	
	Escribir "Nro. de interaciones: ", iteraciones
	
FinAlgoritmo
