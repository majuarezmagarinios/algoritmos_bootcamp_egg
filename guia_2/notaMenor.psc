//El promedio de los trabajos prácticos de un curso se calcula en base a cuatro notas de las
//cuales se elimina la nota menor y se promedian las tres notas más altas. Escriba un
//programa que determine cuál es la nota eliminada y el promedio de los trabajos prácticos
//de un estudiante.

Algoritmo los3numero
	
	Definir nota1, nota2, nota3, nota4, notaMenor Como Real
	
	leer nota1;
	leer nota2;
	leer nota3;
	leer nota4;
	
	Si (nota1 < nota2) Y (nota3 < nota4) Entonces
		Si(nota1 < nota3) Entonces
			notaMenor= nota1;
			Escribir "La nota menor es ", notaMenor
		SiNo
			notaMenor= nota3;
			Escribir "La nota menor es ", notaMenor
		FinSi
	Fin Si
	
	Si (nota1 > nota2) Y (nota3 > nota4) Entonces
		Si(nota2 > nota4) Entonces
			notaMenor= nota2;
			Escribir "La nota menor es ", notaMenor
		SiNo
			notaMenor= nota4;
			Escribir "La nota menor es ", notaMenor
		FinSi
	Fin Si
FinAlgoritmo
