//	Escribir un programa que procese una secuencia de caracteres ingresada por teclado y
//	terminada en punto, y luego codifique la palabra o frase ingresada de la siguiente manera:
//	cada vocal se reemplaza por el car�cter que se indica en la tabla y el resto de los caracteres
//	(incluyendo a las vocales acentuadas) se mantienen sin cambios.
//	a e i o u
//	@ # $ % *
//Realice un subprograma que reciba una secuencia de caracteres y retorne la codificaci�n
//correspondiente. Utilice la estructura "seg�n" para la transformaci�n.
//Por ejemplo, si el usuario ingresa: Ayer, lunes, salimos a las once y 10.
//	La salida del programa deber�a ser: @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10.
//	NOTA: investigue el uso de la funci�n concatenar de PSeInt para armar la palabra/frase.

Algoritmo sin_titulo
	Definir count Como Entero;
	Definir frase, palabra, espacio Como Caracter;
	count= 0;
	frase="";
	palabra="";
	espacio=" ";
	
	Repetir
		Escribir "Escribe una frase";
		frase= Concatenar(frase, palabra);
		Leer palabra;
		
		Si((count >= 1) Y (palabra <> ".")) Entonces
			frase= frase + espacio;	
		FinSi
		
		count= count + 1;
	Mientras Que(palabra <> ".")
		
	codifica(frase);
FinAlgoritmo


SubProceso codifica(frase Por Valor) 
	Definir i, long Como Entero;
	Definir fraseEnMinu, extrCarat Como Caracter;
	
	long= Longitud(frase);
	fraseEnMinu= Mayusculas(frase);

	Para i=0 Hasta long Con Paso 1 Hacer
		extrCarat= Subcadena(fraseEnMinu, i, i);
		
		Segun extrCarat Hacer
			"A":
				Escribir "@" Sin Saltar;
			"E":
				Escribir "#" Sin Saltar;
			"I":
				Escribir "$" Sin Saltar;
			"O":
				Escribir "%" Sin Saltar;
			"U":
				Escribir "*" Sin Saltar;
			De Otro Modo:
				Escribir extrCarat Sin Saltar;
		Fin Segun	
		
	FinPara
FinSubProceso
