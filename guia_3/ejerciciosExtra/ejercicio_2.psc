//	Dise�ar una funci�n que reciba un numero en forma de cadena y lo devuelva como numero
//	entero. El programa podr� recibir n�meros de hasta 3 d�gitos. Nota: no poner n�meros con
//	decimales

Funcion retorno <- convAEntero (numCade)
	
	Definir retorno Como Entero;
	retorno= 0;
	
	Si(numCade <= 999) Entonces
		Escribir "Fue convertido a tipo num�rico el ", Sin Saltar;
		retorno= numCade
	SiNo
		Escribir "Ingresa n�meros de hasta 3 decimales";
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
