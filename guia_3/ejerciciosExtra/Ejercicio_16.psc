//16. Implemente de forma recursiva una funci�n que le d� la vuelta a una cadena de caracteres.
//NOTA: Si la cadena es un pal�ndromo, la cadena y su inversa coincidir�n.

Funcion retorno <- cadeAlReves(frase, long)
	Definir retorno, a, b Como Caracter;
	
	
	a= "";
	Si (long > -1) Entonces
		a= a + Subcadena(frase, long, long);
		
		b= cadeAlReves(frase, (long - 1))
	FinSi
	
	
	Escribir retorno
Fin Funcion


Algoritmo sin_titulo
	Definir long Como Entero;
	Definir frase Como Caracter;	
	
	Escribir "Escriba una frase, la mostraremos escrita al rev�s";
	Leer frase;
	
	long= Longitud(frase);
	
	Escribir cadeAlReves(frase, long);
FinAlgoritmo
