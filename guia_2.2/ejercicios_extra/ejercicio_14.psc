//	Escriba un programa que lea un número entero (altura) y a partir de él cree una escalera 
//	invertida de asteriscos con esa altura. Por ejemplo, si ingresamos una altura de 5 se 
//	deberá mostrar:
//	***** 
//	**** 
//	*** 
//	** 
//	*

Algoritmo sin_titulo
	Definir i, j, num Como Entero
	
	Escribir "Ingresa la altura";
	Leer num;
	Escribir "";
	
	Para i=1 Hasta num Con Paso 1
		Para j=0 Hasta num-i Con Paso 1
			Escribir "* " Sin Saltar;
		FinPara
		Escribir "";
	FinPara
	
FinAlgoritmo
