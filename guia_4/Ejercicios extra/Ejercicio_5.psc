//	Tomando en cuenta el ejercicio 6, mejore el mecanismo de inserci�n del car�cter, facilitando
//	un potencial reordenamiento del vector. Digamos que se pide ingresar el car�cter en la
//	posici�n X y la misma est� ocupada, entonces de existir un espacio en cualquier posici�n X-n
//	o X+n, desplazar los caracteres hacia la izq o hacia la derecha para poder ingresar el car�cter
//	en cuesti�n en el lugar deseado. El procedimiento de reordenamiento debe ubicar el espacio
//	m�s cercano.
//	Por ejemplo, suponiendo la siguiente frase y los sub�ndices del vector:
//		H o l a m u n d o c r u e l !
//		0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
//	Si se desea ingresar el car�cter "%" en la posici�n 8, entonces el resultado con
//	desplazamiento ser�a:
//		h o l a m u n % d o c r u e l !
//		0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
//	Notar que el desplazamiento se hizo hacia la izquierda porque el espacio de la posici�n 10 
//	estaba m�s cerca de la posici�n 8 que el espacio de la posici�n 4.

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
	
	Si((vector[posicion] == " ") o (vector[posicion] = "")) Entonces
		vector[posicion]= caracElegido;
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

