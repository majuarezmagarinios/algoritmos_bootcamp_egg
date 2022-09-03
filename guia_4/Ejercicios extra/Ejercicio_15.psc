//	Una empresa de venta de productos por correo desea realizar una estadística de las ventas
//	realizadas de cada uno de sus productos a lo largo de una semana. Distribuya luego 5
//	productos en los 5 días hábiles de la semana. Se desea conocer:
//		a) Total de ventas por cada día de la semana.
//		b) Total de ventas de cada producto a lo largo de la semana.
//		c) El producto más vendido en cada semana.
//		d) El nombre, el día de la semana y la cantidad del producto más vendido.
//	El informe final tendrá un formato como el que se muestra a continuación:

Algoritmo sin_titulo
	Definir prodPorSemana Como Entero;
	Definir diasSemana Como Caracter;
	Dimension prodPorSemana[6,6], diasSemana[8];
	
	llenado(prodPorSemana, diasSemana);
FinAlgoritmo

Funcion llenado(prodPorSemana, diasSemana)
	Definir i, j Como Entero;
	
	diasSemana[0]= "	      ";
	diasSemana[1]= " Lunes    ";
	diasSemana[2]= " Martes   ";
	diasSemana[3]= " Miércoles    ";
	diasSemana[4]= " Jueves    ";
	diasSemana[5]= " Viernes    ";
	diasSemana[6]= " Sábado    ";
	diasSemana[7]= " Domingo    ";
	
	Para i=0 Hasta 6
		Escribir diasSemana[i] Sin Saltar;
		Para j=0 Hasta 6
//			Escribir podPorSemana[i,j-1]= ;
		FinPara
	FinPara
	
FinFuncion
	