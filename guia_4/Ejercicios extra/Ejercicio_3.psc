//	Crear dos vectores que tengan el mismo tama�o (el tama�o se pedir� por teclado) y
//	almacenar en uno de ellos nombres de personas como cadenas. En el segundo vector se
//	debe almacenar la longitud de cada uno de los nombres (para ello puedes usar la funci�n
//	Longitud() de PseInt). Mostrar por pantalla cada uno de los nombres junto con su longitud.

Funcion retorno <- nombres(n)
	Definir retorno, vectorLong, i, long Como Entero;
	Definir vectorNomb, nomb Como Caracter;
	Dimension vectorNomb[n], vectorLong[n];
	
	Para i=0 Hasta (n-1)
		Escribir "Ingrese un nombre" Sin Saltar;
		leer nomb;
		vectorNomb[i] = nomb;
		
		Escribir "Nombre: ", Mayusculas(vectorNomb[i]) ",  " Sin Saltar;
		long= Longitud(nomb);
		vectorLong[i]= long;
		
		Escribir "Longitud: ", vectorLong[i];
		Escribir "";
	
	FinPara
Fin Funcion


Algoritmo sin_titulo
	Definir resultado, n Como Entero;
	
	Escribir "Ingrese la dimensi�n de los vectores";
	Leer n;
	
	resultado= nombres(n);
FinAlgoritmo

