//Rellenar una matriz, de 3 x 3, con una palabra de 9 de longitud, pedida por el usuario,
//encontrando la manera de que la palabra se muestre de manera continua en la matriz.
//Por ejemplo, si tenemos la palabra habilidad, nuestra matriz se debería ver así:
//		H A B
//		I L I
//		D A D
//	Nota: recordar el uso de la función Subcadena().

Funcion retorno <- llenarMatriz()
	Dimension matriz[3,3];
	Definir long, i, j, x, count, l, p Como Entero;
	Definir retorno, matriz, frase, cara Como Caracter
	
	count=0;
	l=0;
	
	Repetir
		
		Si(count == 0) Entonces
			Escribir "Ingrese una palabra de 9 caracteres, un digito a la vez";
			leer frase
			count= count + 1;
		SiNo
			Escribir "Ingrese una palabra de 9 caracteres, un digito a la vez";
			Escribir "Ingresala nuevamente";
			leer frase
		FinSi
		
		long= Longitud(frase);
	Mientras Que (long <> 9)
	
	Para j=0 hasta 2
		Para x=0 hasta 2
			cara= Subcadena(frase, l, l);
			matriz[j,x]=cara
			l= l + 1
		FinPara
	Fin Para
	
	para l=0 Hasta 2
		Para p=0 hasta 2
			Escribir matriz[l,p]  Sin Saltar;
		Fin Para
		Escribir ""
	Fin Para
	
Fin Funcion


Algoritmo sin_titulo
	Definir resultado Como Caracter
	
	resultado= llenarMatriz();	
FinAlgoritmo
