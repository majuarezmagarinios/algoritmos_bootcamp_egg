//	Crea una función EsMultiplo que reciba los dos números pasados por el usuario, validando
//	que el primer número múltiplo del segundo y devuelva verdadero si el primer número es
//	múltiplo del segundo, sino es múltiplo que devuelva falso.


Algoritmo sin_titulo
	
	Definir num1, num2 Como Entero;
	Definir resultado Como Logico;
	
	Escribir "Escriba un numero y luego otro"
	Leer num1, num2;
	
	resultado= EsMultiplo(num1, num2);
	
	Si(resultado) Entonces
		Escribir "Si es multiplo"
	SiNo
		Escribir "No es multiplo"
	FinSi
	
FinAlgoritmo



Funcion resu <- esMultiplo (num1, num2)
	Definir resu Como Logico;
	Si(num1 MOD num2 = 0) Entonces
		resu= Verdadero;
	SiNo
		resu= Falso;
	FinSi
	
	
Fin Funcion