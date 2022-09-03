//	Siguiendo el ejercicio 20 de los ejercicios principales, ahora deberemos hacer lo mismo
//	pero que la cadena se muestre al revés. Por ejemplo, si tenemos la cadena: Hola,
//	deberemos mostrar a l o H.

Algoritmo sin_titulo
	Definir i, long Como Entero;
	Definir palabra, palMayu Como Caracter;
	
	Escribir "Escribe una palabra y la mostrare al reves y con los caracteres separados";
	Leer palabra;
	Escribir "El resultado es";
	
	long = Longitud(palabra);
	
	Para i=0 Hasta long Con Paso 1
		palMayu= Mayusculas(palabra);
		Escribir Subcadena(palMayu,long-i, long-i), " " Sin Saltar;
	FinPara
	
	
FinAlgoritmo
