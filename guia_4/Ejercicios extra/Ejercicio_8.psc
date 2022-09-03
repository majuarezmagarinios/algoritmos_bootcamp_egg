//	Programe una función que calcule el producto de un arreglo de números enteros. Para esto
//	imagine, por ejemplo, que para un vector V de tamaño 4, el producto de todos los valores es
//	igual a (V[1]*V[2]*V[3]*V[4])

Algoritmo sin_titulo
	Definir vector, i, n Como Entero	
	
	Escribir "Ingrese el tamaño del vector";
	Leer n;
	
	Dimension vector[n];
	
	llenarVector(vector, n);
	
	Escribir "El producto de todos los nros ingresados es: ", multiRec(vector, n);
FinAlgoritmo


Funcion llenarVector(vector Por Referencia, n)
	Definir i Como Entero;
	
	Para i=0 hasta (n-1)
		Escribir "Ingresa el nro: ", (i + 1);
		Leer vector[i];
	FinPara
FinFuncion


Funcion retorno= multiRec(vector,n)
	Definir retorno Como Entero;
	
	Si(n == 1) Entonces
		retorno= vector[0];
	SiNo
		retorno= vector[n-1] * multiRec(vector, n-1);
	FinSi
FinFuncion
