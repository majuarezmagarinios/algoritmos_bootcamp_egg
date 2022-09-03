//	Realizar un subproceso que reciba una letra y muestre un mensaje si esa letra esta entre las
//	letras "M" y "T". Recordar que Pseint le da un valor numérico a cada letra a través del Código
//	Ascii, lo que nos deja usar operadores relacionales con letras y cadenas.

Algoritmo sin_titulo
	Definir letra Como Caracter
	
	Escribir "Ingrese una letra, te diremos si se encuentra entre la M y T" Sin Saltar;
	Leer letra;
	
	encontLet(letra);
FinAlgoritmo

SubProceso encontLet(letra por valor)
	Definir i, long Como Entero;
	Definir rango, letraEnMayus, retornar Como Caracter;
	Definir result Como Logico;
	
	result= falso
	rango="MNÑOPQRST";
	
	letraEnMayus = Mayusculas(letra);
	
	Para i=0 Hasta 9 Con Paso 1 Hacer
		
		retornar= Subcadena(rango, i, i);
		Si(letraEnMayus==retornar) Entonces
			result= verdadero
		Fin Si
	FinPara
	
	Si(result == verdadero) Entonces
		Escribir letraEnMayus ," => se encuentra entre la M y la T";
	SiNo
		Escribir letraEnMayus ," => NO! se encuentra entre la M y la T";
	FinSi
FinSubProceso
	