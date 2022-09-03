//	Escribir un programa que calcule el cuadrado de los 9 primeros números naturales e
//	imprima por pantalla el número seguido de su cuadrado. Ejemplo: "2 elevado al cuadrado
//	es igual a 4", y así sucesivamente.

Algoritmo ejercicio_6
	
	Definir numNaturales, num, i Como Entero;
	Definir cuadrados Como Real;
	Definir espacio Como Caracter;
	
	numNaturales= 0;
	num= 0;
	cuadrados=0
	espacio= " ";
	
	Escribir "Escribi un número"
	leer num;
	
	Para i=num Hasta (num+9) Con Paso 1 Hacer
		cuadrados= (i^2)
		Si(cuadrados < 10) Entonces			
			Escribir i, " al cuadrado es: ", espacio, espacio, cuadrados, "  y el siguiente es  ", espacio,  (cuadrados + 1)
			SiNo
				Si(cuadrados < 99) Entonces
					Escribir i, " al cuadrado es: ", espacio, cuadrados, "  y el siguiente es  ", espacio, (cuadrados + 1)
				SiNo
					Escribir i, " al cuadrado es: ", cuadrados, "  y el siguiente es  ", (cuadrados + 1)
				FinSi
		FinSi
	Fin Para
	
FinAlgoritmo
