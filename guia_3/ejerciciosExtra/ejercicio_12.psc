//	Crear un programa que dibuje una escalera de números, donde cada línea de números
//	comience en uno y termine en el número de la línea. Solicitar la altura de la escalera al usuario
//	al comenzar. Ejemplo: si se ingresa el número 3:
//	1
//	12
//	123

Algoritmo sin_titulo
	Definir num Como Entero;
	
	Escribir "Ingrese el número máximo de niveles de la escalera"
	Leer num;
	
	escalera(num);
FinAlgoritmo

SubProceso escalera(num)
	Definir i, x Como Entero;
	
	Para i<-1 Hasta num Con Paso 1 Hacer
		Para x<-1 Hasta i Con Paso 1 Hacer
			Escribir x Sin Saltar
		Fin Para
		Escribir ""
	Fin Para
	
FinSubProceso
