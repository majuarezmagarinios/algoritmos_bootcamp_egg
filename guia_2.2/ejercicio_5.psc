//Escribir un programa que lea n�meros enteros hasta teclear 0 (cero). Al finalizar el
//programa se debe mostrar el m�ximo n�mero ingresado, el m�nimo, y el promedio de
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
		Escribir "Escribi n�meros enteros"
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
	Escribir "- N�mero menor: ", numMin;
	Escribir "- N�mero mayor: ", numMax;
	Escribir "- Suma de todos los n�meros ingresados: ", suma;
	Escribir "- Cantida de n�meros ingresados: ", cont;
	Escribir "- Promedio: ", suma / cont;
	
FinAlgoritmo
