//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
//usuario. A continuación, se debe buscar un elemento dentro del arreglo (el número a buscar
//también debe ser ingresado por el usuario). El programa debe indicar la posición donde se
//encuentra el valor. En caso que el número se encuentre repetido dentro del arreglo se deben
//imprimir todas las posiciones donde se encuentra ese valor.
//Finalmente, en caso que el número a buscar no está adentro del arreglo se debe mostrar un
//mensaje.

Algoritmo sin_titulo
	Definir i, j, t, n, nABuscar, vector Como Entero;
	Definir coincidencia Como Logico;
	coincidencia= Verdadero;
	
	Escribir "¿Cuantos numeros ingresaras?"
	Leer t;
	
	Dimension vector[t];
	
	Escribir "Ingresa los ", t, " números";
	
	Para i=0 Hasta t-1 Hacer
		Leer n;
		vector[i]= n	
	FinPara
	
	Escribir "Ingrese un número a buscar"
	leer nABuscar
	
	Para j=0 Hasta t-1 Hacer
		Si(nABuscar == vector[j]) Entonces
			Escribir "La posición es: ", j, " y el valor es el ", vector[j]
			coincidencia= falso
		FinSi
	FinPara
	
	Si(coincidencia) Entonces
		Escribir "El número ", nABuscar, " no coincide con los ingrsados anteriormente"
	FinSi
	
FinAlgoritmo
