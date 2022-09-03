//	Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) realizar
//	un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos otro
//	subprograma que calcule y muestre la suma de los elementos de la matriz. Mostrar la matriz y
//	los resultados por pantalla.

Funcion retorno <- llenarMatriz(n,m)
	Dimension matriz(n,m);
	Definir retorno, matriz, i, j Como Entero;
	
	Para i=0 Hasta (n-1)
		Para j=0 Hasta (m-1) 
			matriz[i,j]=Aleatorio(0,5);
		Fin Para
	Fin Para
	
	retorno= sumValMatriz(matriz, n, m);
Fin Funcion


Algoritmo sin_titulo
	Definir resultado, n, m Como Entero;
	
	Escribir "Ingresar las filas y columnas para la matriz";
	Leer n,m;
	
	resultado= llenarMatriz(n,m);	
FinAlgoritmo


SubProceso retornar = sumValMatriz(matriz Por Referencia, n Por Referencia, m Por Referencia)
	Definir i, j, aux Como Entero;
	
	Para i=0 Hasta (n-1)
		Para j=0 Hasta (m-1) 
			Escribir matriz[i,j] " " Sin Saltar;
		Fin Para
		Escribir "";
	Fin Para
	
	aux=0;
	Escribir "";
	
	Para i=0 Hasta (n-1)
		Para j=0 Hasta (m-1) 
			
			Si((i == n-1) Y (j == m-1)) Entonces
				Escribir  matriz[i,j] " = " Sin Saltar
			SiNo
				Escribir  matriz[i,j] " + " Sin Saltar
			FinSi
			aux= aux + matriz[i,j];
		Fin Para
		
	Fin Para
	
	Escribir aux
FinSubProceso
