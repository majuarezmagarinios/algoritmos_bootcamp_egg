//	Crear una funci�n que devuelva la diferencia que hay entre el valor m�s chico de un arreglo y
//	su valor m�s grande.

Algoritmo sin_titulo
	
	comparacion()
FinAlgoritmo

Funcion comparacion()
	Definir retorno, vector, i, mayor, menor Como Entero;
	Dimension vector[4];
	mayor=0;
	menor=0;
	
	Escribir "N�meros dentro del vector: " Sin Saltar;
	
	Para i=0 Hasta 3
		vector[i]= azar(15);
		Escribir vector[i] " " Sin Saltar;
	FinPara
	
	Escribir "";
	
	Para i=0 Hasta 3
		Si(vector[i] > mayor) Entonces
			mayor= vector[i];
		SiNo
			menor= vector[i];
		FinSi
	FinPara
	
	Escribir "Mayor valor: " mayor; 
	Escribir "Menor valor: " menor;
	
	Escribir "Diferencia: ", mayor - menor;
FinFuncion
