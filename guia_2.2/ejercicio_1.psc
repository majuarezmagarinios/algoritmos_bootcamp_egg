//	Escriba un programa que valide si una nota est� entre 0 y 10, sino est� entre 0 y 10 la nota
//	se pedir� de nuevo hasta que la nota sea correcta.

Algoritmo sin_titulo
	Definir nota Como Real
	
	Repetir
		Escribir "Ingresa una nota"
		Leer nota
	Mientras Que (nota < 0) o (nota > 10)
	
	Escribir "Nota correcta"

FinAlgoritmo
