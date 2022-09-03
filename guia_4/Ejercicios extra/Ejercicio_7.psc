Algoritmo sin_titulo
	Definir n, vector Como Entero
	
	Escribir "Ingresa el tamaño del vector";
	Leer n
	
	Dimension vector[n];
	
	llenarVector(vector, n);
	
	Escribir "La suma de los números enteros es: ", sumaRec(vector, n);
FinAlgoritmo



Funcion llenarVector(vector Por Referencia, n)
	Definir i Como Entero
	
	Para i=0 Hasta (n-1)
		Escribir "Ingrese el nro. ", i + 1;
		Leer vector[i];
	FinPara
FinFuncion



Funcion retornar= sumaRec(vector, n)
	Definir retornar Como Entero;
	
	Si(n == 1) Entonces
		retornar= vector[0];
	SiNo
		retornar= vector[n-1] + sumaRec(vector, n-1);
	FinSi
FinFuncion
