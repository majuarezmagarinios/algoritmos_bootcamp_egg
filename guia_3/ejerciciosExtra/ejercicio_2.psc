//	Diseñar una función que reciba un numero en forma de cadena y lo devuelva como numero
//	entero. El programa podrá recibir números de hasta 3 dígitos. Nota: no poner números con
//	decimales

Funcion retorno <- convAEntero (numCade)
	
	Definir retorno Como Entero;
	retorno= 0;
	
	Si(numCade <= 999) Entonces
		Escribir "Fue convertido a tipo numérico el ", Sin Saltar;
		retorno= numCade
	SiNo
		Escribir "Ingresa números de hasta 3 decimales";
	FinSi
	
Fin Funcion


Algoritmo sin_titulo
	Definir resultado Como Entero;
	Definir numCade Como Caracter;
	
	Escribir "Ingresa un numero" Sin Saltar;
	Leer numCade;
	
	resultado= convAEntero(ConvertirANumero(numCade));
	Escribir resultado;	
FinAlgoritmo
