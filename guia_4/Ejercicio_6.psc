//Disponemos de un vector unidimensional de 20 elementos de tipo car�cter. Se pide
//desarrollar un programa que:
//	a) Pida una frase al usuario y luego ingrese la frase dentro del arreglo letra por letra.
//Ayuda: utilizar la funci�n Subcadena de PSeInt.
//	b) Una vez completado lo anterior, pedirle al usuario un car�cter cualquiera y una
//	posici�n dentro del arreglo, y el programa debe intentar ingresar el car�cter en la
//	posici�n indicada, si es que hay lugar (es decir la posici�n est� vac�a o es un espacio
//	en blanco). De ser posible debe mostrar el vector con la frase y el car�cter ingresado,
//	de lo contrario debe darle un mensaje al usuario de que esa posici�n estaba ocupada.
//Por ejemplo, suponiendo la siguiente frase y los sub�ndices del vector:
//	H o l a m u n d o c r u e l !
//	0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
//Si se desea ingresar el car�cter "%" en la posici�n 10, entonces el resultado ser�a:
//		H o l a m u n d o % c r u e l !
//		0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19

Algoritmo sin_titulo
	Definir long, i, j, posicion Como Entero;
	Definir vector, frase, carac, caracElegido Como Caracter;
	Dimension vector[20];
	
	Escribir "Ingresa una frase con un m�ximo de 20 caracteres";
	Leer frase;
	
	long= Longitud(frase); 
	
	Si(long == 20) Entonces
		Para i=0 Hasta 19 Hacer
			carac=Subcadena(frase, i, i);
			vector[i]= carac;
		FinPara
	SiNo
		
		Para i=0 Hasta 19 
			carac=Subcadena(frase, i, i);
			vector[i]= carac;
		FinPara
		
		Para i=long Hasta 19 
			vector[i]=" ";
		FinPara
	FinSi
	
	Escribir "Ingresa un caracter y luego la posicion donde lo quieres agregarlo, indicando el nro. de la posici�n elegida del 0 al 19"
	Leer caracElegido;
	Leer posicion;
	
	Si((vector[posicion-1] == " ") o (vector[posicion-1] = "")) Entonces
		vector[posicion-1]= caracElegido;
		Para i=0 Hasta 19 
			Escribir vector[i] " " Sin Saltar;
		FinPara
		
		Escribir ""
		
		Para i=0 Hasta 19 Hacer
			Si(i < 10) Entonces
				Escribir i " " Sin Saltar
			SiNo
				Escribir i Sin Saltar
			FinSi
		FinPara
	SiNo
		Escribir "La posicion se encuentra ocupada";
	FinSi
	
FinAlgoritmo
