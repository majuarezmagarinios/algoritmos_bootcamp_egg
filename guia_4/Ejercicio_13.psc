//	Una matriz m�gica es una matriz cuadrada (tiene igual n�mero de filas que de columnas) que
//	tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual.
//	Por ejemplo:
//				2 7 6
//				9 5 1
//				4 3 8
//	En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un
//	algoritmo que compruebe si una matriz de datos enteros es m�gica o no, y en caso de que
//	sea m�gica escribir la suma. Adem�s, el programa deber� comprobar que los n�meros
//	introducidos son correctos, es decir, est�n entre el 1 y el 9. El usuario ingresa el tama�o de la
//	matriz que no debe superar orden igual a 10.

Funcion retorno <- respUser()
	Definir retorno, m, count Como Entero;
	count= 0;
	
	Repetir
		Si(count == 0) Entonces
			Escribir "Ingresa el tama�o para la matriz, m�nimo 2 m�ximo 10";
			Leer m;
			count= 1;
		SiNo
			Escribir "Error: debes ingresar un n�mero entre el 2 y el 10";
			Leer m;
		FinSi
		
	Mientras Que ((m < 2) o (m > 10))
	
	retorno= matrizMagica(m);
Fin Funcion



SubProceso retornar= matrizMagica(m)
	Definir retornar, matriz, i, j, auxFilas, auxColumnas Como Entero;
	Dimension matriz[m, m];
	auxColumnas=0;
	auxFilas=0;
	
	Para i=0 hasta (m-1)
		Para j=0 hasta (m-1)
			matriz[i,j]= Aleatorio(1,9);
		FinPara
	FinPara
	
	Para i=0 hasta (m-1)
		Para j=0 hasta (m-1)
			Escribir " " matriz[i,j] Sin Saltar
			auxColumnas= auxColumnas + matriz[i,j]
			auxFilas= auxFilas + matriz[j,i]
		FinPara
		Si(i > 10) Entonces
			Escribir "  => ", "   Suma Col " i + 1 ":  ", auxColumnas, "     Suma Fila ", (i + 1), ": " auxFilas Sin Saltar
		SiNo
			Escribir "  => ", "   Suma Col " i + 1 ":", auxColumnas, "     Suma Fila ", (i + 1), ": " auxFilas Sin Saltar
		FinSi
		
		Si((auxColumnas == 15) Y (auxFilas == 15)) Entonces
			Escribir "La matriz es m�gica" Sin Saltar;
		FinSi
		auxColumnas= 0;
		Escribir ""
		auxFilas=0
	FinPara	
	auxFilas= 0
	

	retornar=()
	
FinSubProceso



Algoritmo sin_titulo
	Definir resultado Como Entero
	
	resultado= respUser();	
	
FinAlgoritmo
