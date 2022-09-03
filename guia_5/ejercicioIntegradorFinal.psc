//Tu misión: hacer un programa que permita ingresar una muestra completa, detectar si es válida, y de ser así,
//que imprima la matriz y muestre un mensaje que indique si se ha detectado o no el gen Z.

Algoritmo sin_titulo
	//	Tamaño matriz la matriz
	Definir long, m Como Entero;
	Definir genZ, palabra Como Caracter;
	m=0;	
	
	Escribir "ingrese una palabra de 9, 16 o 1369 caracteres"
	palabra="CDDACCACCACAAABC"
	long= Longitud(palabra);
	
	Segun long Hacer
		9:
			m=long/3
		16:
			m=long/4
		1369:	
			m=long/37
	FinSegun
	
	Dimension genZ[m,m];
	
	ingresoGen(genZ, m, palabra);
	mostrarGen(genZ, m);
	validarGen(genZ, m);
FinAlgoritmo


Funcion ingresoGen(genZ Por Referencia, m, palabra)
	//Ingreso de muestra
	Definir i, j, count Como Entero;
	Definir res Como Caracter;
	
	count=0;
	Para i=0 Hasta m-1
		Para j=0 Hasta m-1
			res= SubCadena(palabra,count,count);
			genz[i,j]= res;
			count=count + 1;
		FinPara
	FinPara
Fin Funcion


Funcion mostrarGen(genZ, m)
	//	Mostrar matriz
	Definir i, j Como Entero;
	
	Para i=0 Hasta m-1
		Para j=0 Hasta m-1
			Escribir genz[i,j] " " Sin Saltar;
		FinPara
		Escribir ""
	FinPara
	
Fin Funcion


Funcion validarGen(genZ, m)
	//	validar si hay conincidencia
	Definir i, j, countDiag1, countDiag2 Como Entero;
	Definir diagonal1, diagonal2 Como Caracter
	Dimension diagonal1[m], diagonal2[m];
	
	Para i=0 Hasta m-1
		Para j=0 Hasta m-1
			Si(i==j) Entonces
				diagonal1[i]=genZ[i,j];
			FinSi
			Si(i+j= m-1) Entonces
				diagonal2[i]=genZ[i,j];
			FinSi
		FinPara
	FinPara
	
	countDiag1=0;
	countDiag2=0;
	Para i=0 Hasta m-1
		Si(diagonal1[i] == genZ[0,0]) Entonces
			countDiag1= countDiag1 + 1;
		FinSi
		Si(diagonal2[i] == genZ[0, m-1]) Entonces
			countDiag2= countDiag2 + 1;
		FinSi		
	FinPara
	
	Escribir "";
	
	Si((countDiag1 == m) y (countDiag2 == m)) Entonces
		Escribir "GEN Z DETECTADO!!! con las letras ", genZ[0,0], " y ", genZ[0, m-1];
	SiNo
		Escribir "No se detecto gen Z";
	FinSi
Fin Funcion

