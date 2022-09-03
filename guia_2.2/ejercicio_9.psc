//9. Realizar un programa que lea un número entero (tamaño del lado) y a partir de él cree un
//cuadrado de asteriscos de ese tamaño. Los asteriscos sólo se verán en el borde del
//cuadrado, no en el interior. Por ejemplo, si se ingresa el número 4 se debe mostrar:
//		* * * *
//		* 	  *
//		*     *
//		* * * *
//	Nota: Recordar el uso del escribir sin saltar en PseInt.

Algoritmo sin_titulo
	Definir num, i, x Como Entero
	num= 0;
	
	Escribir "Ingrese la longitud de los lados:"
	Leer num
	
	Para i<-1 Hasta num Con Paso 1 Hacer
		Para x<-1 Hasta num Con Paso 1 Hacer
			Si i == 1 O i == num O x == 1 O x == num Entonces
				Escribir Sin Saltar "* "
			SiNo
				Escribir Sin Saltar "  "
			FinSi
		Fin Para
		
		Escribir ""
	Fin Para
FinAlgoritmo