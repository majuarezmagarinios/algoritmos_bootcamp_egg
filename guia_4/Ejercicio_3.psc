//Realizar un programa que rellene un vector de tama�o N, con valores ingresados por el
//usuario. A continuaci�n, se debe buscar un elemento dentro del arreglo (el n�mero a buscar
//tambi�n debe ser ingresado por el usuario). El programa debe indicar la posici�n donde se
//encuentra el valor. En caso que el n�mero se encuentre repetido dentro del arreglo se deben
//imprimir todas las posiciones donde se encuentra ese valor.
//Finalmente, en caso que el n�mero a buscar no est� adentro del arreglo se debe mostrar un
//mensaje.

Algoritmo sin_titulo
	Definir i, j, t, n, nABuscar, vector Como Entero;
	Definir coincidencia Como Logico;
	coincidencia= Verdadero;
	
	Escribir "�Cuantos numeros ingresaras?"
	Leer t;
	
	Dimension vector[t];
	
	Escribir "Ingresa los ", t, " n�meros";
	
	Para i=0 Hasta t-1 Hacer
		Leer n;
		vector[i]= n	
	FinPara
	
	Escribir "Ingrese un n�mero a buscar"
	leer nABuscar
	
	Para j=0 Hasta t-1 Hacer
		Si(nABuscar == vector[j]) Entonces
			Escribir "La posici�n es: ", j, " y el valor es el ", vector[j]
			coincidencia= falso
		FinSi
	FinPara
	
	Si(coincidencia) Entonces
		Escribir "El n�mero ", nABuscar, " no coincide con los ingrsados anteriormente"
	FinSi
	
FinAlgoritmo
