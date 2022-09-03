//	Una distribuidora de Nescafé tiene 4 representantes que viajan por toda la Argentina
//	ofreciendo sus productos. Para tareas administrativas el país está dividido en cinco zonas:
//	Norte, Sur, Este, Oeste y Centro. Mensualmente almacena sus datos y obtiene distintas
//	estadísticas sobre el comportamiento de sus representantes en cada zona. Se desea hacer un
//	programa que lea el monto de las ventas de los representantes en cada zona y calcule luego:
//		a) el total de ventas de una zona introducida por teclado
//		b) el total de ventas de un vendedor introducido por teclado en cada una de las zonas
//		c) el total de ventas de todos los representantes.

Algoritmo sin_titulo
	Definir ventas Como Entero;
	Definir zonas Como Caracter;
	Dimension ventas[4,5], zonas[5];
	
	vendedoresZonas(ventas, zonas);
	calcVentas(ventas, zonas);
FinAlgoritmo


Funcion vendedoresZonas(ventas Por Referencia, zonas Por Referencia)
	Definir i, j Como Entero;
	
	Para i=0 Hasta 4
		Escribir "Ingrese el nombre de la zona ", i + 1, ":" Sin Saltar;
		Leer zonas[i];
	FinPara
	
	Escribir ""
	
	Para i=0 Hasta 3
		Escribir "------------------------------------------";
		Escribir " Ingrese las ventas del vendedor ", i + 1;
		Escribir "------------------------------------------";
		Para j=0 Hasta 4
			Escribir "Zona " zonas[j], ":" Sin Saltar;
			Leer ventas[i,j];
		FinPara
		Escribir "";
	FinPara
	
	Limpiar Pantalla;
FinFuncion


Funcion ventPorZona(ventas, zonas)
	Definir i, op, aux, col Como Entero;
	aux=0;
	
	Escribir "Ingrese el nro de la zona sobre la cual desea saber la ventas"
	Escribir "";
	Para i=0 hasta 4
		Escribir i+1, "-" zonas[i], "  " Sin Saltar;
	FinPara
	
	Escribir "";
	Leer op;
	
	col= op-1;
	
	Escribir "Total de ventas de la zona ", zonas[col] ": " Sin Saltar;
	Para i=0 Hasta 3
		
		Si(i == 3) Entonces
			Escribir ventas[i,col] Sin Saltar;
		SiNo
			Escribir ventas[i,col] " + " Sin Saltar;
		FinSi
		aux= aux + ventas[i,col];
	FinPara
	
	Escribir " = " aux;
FinFuncion


Funcion ventasPorVendedor(ventas, zonas)
	Definir i, op, fila, aux Como Entero;
	aux=0;
	
	Escribir "Ingrese el vendedor: " Sin Saltar;
	Para i=0 hasta 3
		Si(i == 3) Entonces
			Escribir i+1 Sin Saltar;
		SiNo
			Escribir i+1 ", " Sin Saltar;
		FinSi
	FinPara
	
	Escribir "";
	Leer op;
	
	fila= op-1;
	
	Escribir "";
	Escribir "--------------";
	Escribir "  Vendedor ", op
	Escribir "--------------";
	
	Para i=0 Hasta 4
		Si(i == 4) Entonces
			Escribir "Zona ", zonas[i], ": "  ventas[fila,i] ;
			
		SiNo
			Escribir "Zona ", zonas[i], ": "  ventas[fila,i] ;
		FinSi
		aux= aux + ventas[fila,i];
	FinPara
	Escribir "";
	Escribir "Total de ventas: " aux;
	Escribir ""
FinFuncion


Funcion ventasTodasLasZonas(ventas, zonas)
	Definir i, j,  op, aux, aux2 Como Entero;
	aux=0;
	aux2=0;
	
	Escribir "-----------------------------";
	Escribir "      Totales por zona";
	Escribir "-----------------------------";
	Para j=0 Hasta 4
		Escribir " Zona ", zonas[j] "   " Sin Saltar;
		
		Para i=0 Hasta 3
			Si(i == 3) Entonces
				Escribir ventas[i,j] Sin Saltar;
			SiNo
				Escribir ventas[i,j] " + " Sin Saltar;
			FinSi
			aux= aux + ventas[i,j];
			aux2= aux2 + ventas[i,j];
		FinPara
		Escribir " = " aux;
		aux=0;
	FinPara
	
	Escribir "";
	Escribir " Total de ventas de todas las zonas ", aux2;
	Escribir "";	
FinFuncion


Funcion calcVentas(ventas, zonas)
	Definir i, op Como Entero;
	Definir salir Como Logico;
	salir= verdadero;
	
	Mientras (salir) Hacer
		Escribir "";
		Escribir "--------------------------------------";
		Escribir " Eliga una opción con los números";
		Escribir "--------------------------------------";
		Escribir "1- Ver el total de ventas de una zona";
		Escribir "2- Ver el total de ventas de un vendedor";
		Escribir "3- total de ventas de todos los representantes.";
		Escribir "4- Salir";
		Leer op;
		
		Limpiar Pantalla;
		
		Segun op Hacer
			1:
				ventPorZona(ventas, zonas);
			2:
				ventasPorVendedor(ventas, zonas);
			3:
				ventasTodasLasZonas(ventas, zonas);
			4:
				Escribir "Adiós";
				salir=Falso;
			De Otro Modo:
				Escribir "Error";
		Fin Segun
		
	FinMientras
FinFuncion
