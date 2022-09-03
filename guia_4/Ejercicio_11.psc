//	Rellenar en un subproceso una matriz cuadrada con números aleatorios salvo en la diagonal
//	principal, la cual debe rellenarse con ceros. Una vez llena la matriz debe generar otro
//	subproceso para imprimir la matriz.

Funcion retorno <- llenarMatriz()
	Definir retorno, matriz, i, j, filas, columnas Como Entero;
	filas= 5;
	columnas= 5;
	
	Dimension matriz[filas,columnas];
	
	Para i=0 Hasta (filas-1)
		Para j=0 Hasta (columnas-1)
			
			Si((i == 0) Y (j == 0)) Entonces
				matriz[i,j]= 0;
				
			SiNo
				Si((i == 1) Y (j == 1)) Entonces
					matriz[i,j]= 0;
					
				SiNo		
					Si((i == 2) Y (j == 2) ) Entonces
						matriz[i,j]= 0;
						
					SiNo				
						Si((i == 3) Y (j == 3)) Entonces
							matriz[i,j]= 0;
							
						SiNo
							Si((i == 4) Y (j == 4)) Entonces
								matriz[i,j]= 0;
								
							SiNo
								matriz[i,j]=Aleatorio(1,9);
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
			
		FinPara	
	FinPara
	
	retorno= diagonal(matriz, filas, columnas)
Fin Funcion


Algoritmo sin_titulo
	Definir resultado Como Entero;
	resultado= llenarMatriz();
FinAlgoritmo


SubProceso retorar = diagonal(matriz Por Referencia, filas Por Referencia, columnas Por Referencia)
	Definir retorar, i, j Como Entero;
	
	Para i=0 hasta (filas-1)
		Para j=0 hasta (columnas-1)
			Si(matriz[i,j] == 0) Entonces
				Escribir " ", matriz[i,j], " " Sin Saltar;
			SiNo
				Escribir " " matriz[i,j] " " Sin Saltar;
			FinSi
		FinPara
		Escribir ""
	Fin Para
	
FinSubProceso
