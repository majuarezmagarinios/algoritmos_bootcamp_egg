//Crear un procedimiento que calcule la temperatura media de un día a partir de la temperatura
//máxima y mínima. Crear un programa principal, que, utilizando un procedimiento, vaya
//pidiendo la temperatura máxima y mínima de n días y vaya mostrando la media de cada día. El
//programa pedirá el número de días que se van a introducir.

Algoritmo sin_titulo
	Definir tempMinim, tempMaxim Como Real;
	Definir cantDias Como Entero;
	
	Escribir " Ingrese la cantidad de días"
	Leer cantDias;
	
	mediciDeTempe(cantDias);
	
FinAlgoritmo

SubProceso mediciDeTempe(cantDias Por Referencia)
	Definir tempMinim, tempMaxim Como Real;
	Definir i Como Entero;
	Definir tempMedia Como Real;
	
	Para i=1 Hasta cantDias Con Paso 1 Hacer
		Escribir ""
		Escribir " Ingresa la temperatura mínima y luego la máxima";
		Escribir "--------------------------------------------------"
		Leer tempMinim, tempMaxim;
		tempMedia= (tempMinim + tempMaxim) /2;
		Escribir " Día ", i, " temperatura media: ", tempMedia
		Escribir ""
		Escribir ""
	FinPara
	
FinSubProceso
	