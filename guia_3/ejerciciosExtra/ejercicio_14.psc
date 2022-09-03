//Diseñar un procedimiento que reciba una frase, y el programa remueva todas las vocales
//repetidas. Al final el procedimiento mostrará la frase final.

Algoritmo sin_titulo
	Definir frase Como Caracter;
	
	Escribir "Ingrese una frase";
	leer frase;
	
	quitarVocal(frase);
FinAlgoritmo



SubProceso quitarVocal(frase)
	Definir i, long, countA, countE, countI, countO, countU  Como Entero;
	Definir a, b Como Caracter;
	countA= 0;
	countE= 0;
	countI= 0;
	countO= 0;
	countU= 0;
	
	a= Mayusculas(frase);
	long= Longitud(a);
	
	Para i=0 Hasta long Con Paso 1 Hacer
		b=Subcadena(a, i, i);
		
		Segun b Hacer
			"A" O "Á":
				countA= countA + 1;
				Si(countA >= 2) Entonces
					b=" "
					Escribir b Sin Saltar;
				SiNo
					Escribir b Sin Saltar;
				FinSi
				
			"E" O "É":
				countE= countE + 1;
				Si(countE >= 2) Entonces
					b=" "
					Escribir b Sin Saltar;
				SiNo
					Escribir b Sin Saltar;
				FinSi
				
			"I" O "Í":
				countI= countI + 1;
				Si(countI >= 2) Entonces
					b=" "
					Escribir b Sin Saltar;
				SiNo
					Escribir b Sin Saltar;
				FinSi
				
			"O" O "Ó":
				countO= countO + 1;
				Si(countO >= 2) Entonces
					b=" "
					Escribir b Sin Saltar;
				SiNo
					Escribir b Sin Saltar;
				FinSi
				
			"U" O "Ú":
				countU= countU + 1;
				Si(countU >= 2) Entonces
					b=" "
					Escribir b Sin Saltar;
				SiNo
					Escribir b Sin Saltar;
				FinSi
				
			De Otro Modo:
				Escribir b Sin Saltar;
		Fin Segun
	FinPara
FinSubProceso
