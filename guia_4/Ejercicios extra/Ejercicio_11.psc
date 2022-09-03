//	Realizar un programa que cree una matriz de 5x15 y deberemos llenar la matriz de unos y
//	ceros. Llenando el marco o la delimitación externa de la matriz de unos y la parte interna de
//	ceros.
//	Por ejemplo, nuestro matriz final debería verse así:
//		111111111111111
//		100000000000001
//		100000000000001
//		100000000000001
//		111111111111111

Algoritmo sin_titulo
	Definir matriz, i, j, a Como Entero;
	Dimension matriz[5,15];
	
	Para i=0 Hasta 4
		Para j=0 Hasta 14
			Si((i==0) o (i==4)) Entonces
				matriz[i,j]= 1;
			SiNo
				Si((j == 0) o (j == 14)) Entonces
					matriz[i,j]=1;
				SiNo
					matriz[i,J]=0;
				FinSi
				
			FinSi
		FinPara
	FinPara
	
	mostrarMatriz(matriz);
FinAlgoritmo


Funcion mostrarMatriz(matriz)
	Definir i, j Como Entero;
	
	Para i=0 Hasta 4
		Para j=0 Hasta 14
			Escribir " " matriz[i,j] Sin Saltar
		FinPara
		Escribir ""
	FinPara 
	
FinFuncion
	