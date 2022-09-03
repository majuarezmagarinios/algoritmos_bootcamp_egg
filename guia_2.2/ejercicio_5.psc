//Escribir un programa que lea números enteros hasta teclear 0 (cero). Al finalizar el
//programa se debe mostrar el máximo número ingresado, el mínimo, y el promedio de
//todos ellos.

Algoritmo sin_titulo
	Definir num Como Entero;
	Definir suma, numMax, numMin, promedio, cont Como Real;
	
	num= 0;
	numMax=num;
	numMin=num;
	suma=0;
	cont= 0;
	promedio=0;
	
	Repetir
		Escribir "Escribi números enteros"
		Leer num
		
		si(num <> 0) Entonces
			Si((num > numMax)) Entonces
				numMax= num;
			SiNo
				Si((num < numMax)) Entonces
					numMin= num
				FinSi
			FinSi
		FinSi
		
		suma= num + suma
		cont= cont + 1
	Mientras Que (num <> 0)
	
	Escribir "";
	Escribir "- Número menor: ", numMin;
	Escribir "- Número mayor: ", numMax;
	Escribir "- Suma de todos los números ingresados: ", suma;
	Escribir "- Cantida de números ingresados: ", cont;
	Escribir "- Promedio: ", suma / cont;
	
FinAlgoritmo
