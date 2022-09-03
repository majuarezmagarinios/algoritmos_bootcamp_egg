//	Realizar un programa que pida al usuario una frase y una letra a buscar en esa frase. La
//	función debe devolver la cantidad de veces que encontró la letra. Nota: recordar el uso de la
//	función Subcadena().

Algoritmo sin_titulo
	Definir frase, letra Como Caracter;
	Definir count Como Entero;
	
	Escribir "Ingrese una frase y luego una letra a buscar" Sin Saltar;
	leer frase, letra;
	
	count=letABuscar(frase, letra);
	
	Escribir "La letra ", letra, " se repite ", count;
	
FinAlgoritmo

Funcion count <- letABuscar(frase, letra)
	Definir long, i, count Como Entero;
	Definir subC Como Caracter;
	count=0;
	
	long= Longitud(frase);
	
	Para i=1 Hasta long Con Paso 1 Hacer
		subC= Subcadena(frase, i, i)
		Si(subC == letra) Entonces
			count= count + 1
		FinSi
	FinPara
	
Fin Funcion
