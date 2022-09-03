//  Realizar un programa que pida tres notas y determine si un alumno aprueba o reprueba un
//	curso, sabiendo que aprobará el curso si su promedio de tres calificaciones es mayor o
//	igual a 70; y reprueba en caso contrario.

Algoritmo sin_titulo
	Definir nota1, nota2, nota3, promedio Como Real;
	
	Escribir "A continuacion escriba sus tres notas";
	Leer nota1, nota2, nota3;
	
	promedio= redon((nota1+nota2+nota3) /3)
	
	Si (promedio >= 70) Entonces
		Escribir "Tu promedio es: ", promedio, " APROBASTE!"
	SiNo
		Escribir "Tu promedio es: ", promedio, " REPROBASTE"
	Fin Si
	
FinAlgoritmo
