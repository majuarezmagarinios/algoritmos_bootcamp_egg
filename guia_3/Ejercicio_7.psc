//Crear un procedimiento que calcule la temperatura media de un d�a a partir de la temperatura
//m�xima y m�nima. Crear un programa principal, que, utilizando un procedimiento, vaya
//pidiendo la temperatura m�xima y m�nima de n d�as y vaya mostrando la media de cada d�a. El
//programa pedir� el n�mero de d�as que se van a introducir.

Algoritmo sin_titulo
	Definir tempMinim, tempMaxim Como Real;
	Definir cantDias Como Entero;
	
	Escribir " Ingrese la cantidad de d�as"
	Leer cantDias;
	
	mediciDeTempe(cantDias);
	
FinAlgoritmo

SubProceso mediciDeTempe(cantDias Por Referencia)
	Definir tempMinim, tempMaxim Como Real;
	Definir i Como Entero;
	Definir tempMedia Como Real;
	
	Para i=1 Hasta cantDias Con Paso 1 Hacer
		Escribir ""
		Escribir " Ingresa la temperatura m�nima y luego la m�xima";
		Escribir "--------------------------------------------------"
		Leer tempMinim, tempMaxim;
		tempMedia= (tempMinim + tempMaxim) /2;
		Escribir " D�a ", i, " temperatura media: ", tempMedia
		Escribir ""
		Escribir ""
	FinPara
	
FinSubProceso
	