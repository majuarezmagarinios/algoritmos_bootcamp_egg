//	Una compañía de seguros tiene contratados a n vendedores. Cada vendedor realiza
//	múltiples ventas a la semana. La política de pagos de la compañía es que cada vendedor
//	recibe un sueldo base más un 10% extra por comisiones de sus ventas. El gerente de la
//	compañía desea saber, por un lado, cuánto dinero deberá pagar en la semana a cada
//	vendedor por concepto de comisiones de las ventas realizadas, y por otro lado, cuánto
//	deberá pagar a cada vendedor como sueldo total (sueldo base + comisiones). Para cada
//	vendedor ingresar cuanto es su sueldo base, cuantas ventas realizó y cuanto cobró por
//	cada venta.

Algoritmo sin_titulo
	Definir vendedores, contador, i, x Como Entero;
	Definir sueldoBase, venta, ventasTotales, pagoPVenta, sueldoTotal, SumaVenta Como Real;
	
	vendedores= 0;
	sueldoBase= 0;
	venta= 0;
	ventasTotales= 0;
	pagoPVenta= 0;
	sueldoTotal= 0;
	SumaVenta= 0;
	
//	Solicito la cantidad de vendedores
	Escribir "Ingrese la cantidad de vendedores";
	Leer vendedores;
	
//	Solicito ingresar ventas y sueldo base y calculo comisiones y sueldo total
	Para i=1 Hasta vendedores Con Paso 1 Hacer
		Escribir "";
		Escribir "------------------------------------";
		Escribir "Vendedor ", i;
		Escribir "------------------------------------";
		Escribir "Cantidad de ventas =", Sin Saltar;
		Leer contador;
		Escribir ""
		
//	Solicito la venta y calculo cuanto se le paga por cada una de las ventas
		Para x=1 Hasta contador Con Paso 1 Hacer
			Escribir "- Importe venta nro ", x , " =" Sin Saltar 
			Leer venta
			venta= venta * 0.1
			Escribir "- Total a pagar por la venta nro. ", x, " =>  $" venta
			Escribir ""
			Escribir ""
			SumaVenta= SumaVenta + venta;
//	Al finalizar el bucle regreso a 0 ventas para que no se sume a las ventas del siguiente vendedor
			Si(x == contador) Entonces
				venta= 0;
			FinSi
		FinPara
		
//	Solicito el sueldo base
		Escribir "- Ingresa el sueldo base del vendedor =" Sin Saltar
		Leer sueldoBase
		Escribir ""
		
		Escribir ""
		Escribir "Total de ventas del mes => $", SumaVenta;
//	Calculo y muestro el total semanal a pagar por comision sobre sus ventas (10%)
		ventasTotales= ( SumaVenta/4 );
		Escribir "Pago semanal por ventas (10% de sus ventas) =>  $", ventasTotales
//	Regreso a 0 el total de ventas para que no se sume el presente valor al siguiente vendedor 
		SumaVenta= 0;
		
//	Calculo y muestro cuánto deberá pagar a cada vendedor como sueldo total (sueldo base + comisiones)
		sueldoTotal= sueldoBase + ventasTotales
		Escribir "Pago total (sueldo base + comisiones) =>  $", sueldoTotal
		Escribir ""
		Escribir ""
	FinPara
	
FinAlgoritmo
