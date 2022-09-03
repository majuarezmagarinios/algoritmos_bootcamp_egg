//	Realizar un programa que pida una frase y el programa deberá mostrar la frase con un
//	espacio entre cada letra. La frase se mostrará así: H o l a. Nota: recordar el funcionamiento
//	de la función Subcadena().

Algoritmo sin_titulo
	Definir i Como Entero;
	Definir frase Como Caracter;

	Escribir "Escriba una frase";
	Leer frase;
	
		Para i=0 Hasta Longitud(frase) Con Paso 1 Hacer
		Escribir Sin Saltar SubCadena(frase, i, i),  " ";
	Fin Para
	
FinAlgoritmo
