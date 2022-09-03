//	Se pide escribir un programa que calcule la suma de los N primeros números pares. Es
//	decir, si ingresamos el número 5 como valor de N, el algoritmo nos debe realizar la suma
//	de los siguientes valores: 2+4+6+8+10.

Algoritmo sin_titulo
	Definir num, aux Como Entero;
	num= 0;
	aux= 0;
	
	Escribir "Escribe números, solo sumaremos los pares"
	
	Repetir
		Leer num;
//	Se verifica que se sumen solo los números pares
		Si (num MOD 2 = 0) Entonces
			
//	Se muestra el total de sumar el valor anterior que tenia num (aux) y el actual
			Escribir num, " + ", aux, " => ", num+aux;
			
//	Se guarda el resultado de la suma anterior en aux para que se pueda sumar con el valor nuevo que ingrese el usuario en num
				aux= num+aux;
				Escribir ""
			FinSi
	Mientras Que (1 = 1)
	
FinAlgoritmo
