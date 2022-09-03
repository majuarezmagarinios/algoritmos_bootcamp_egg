//	Realizar una función que valide si un número es impar o no. Si es impar la función debe
//	devolver un verdadero, si no es impar debe devolver falso. Nota: la función no debe tener
//	mensajes que digan si es par o no, eso debe pasar en el Algoritmo.

Algoritmo sin_titulo
	Definir num Como Real;
	Definir resultado Como Logico;
	
	Escribir "Ingresa un numero" Sin Saltar;
	Leer num;
	
	resultado=parImpar(num);
	
	Si(resultado) Entonces
		Escribir " ", num, " es Impar";
	SiNo
		Escribir " ", num, " Par";
	FinSi
FinAlgoritmo

Funcion resu <- parImpar ( num )
	Definir resu Como Logico;
	Si(num MOD 2 <> 0) Entonces
		resu= Verdadero;
	SiNo
		resu= falso;
	FinSi
Fin Funcion