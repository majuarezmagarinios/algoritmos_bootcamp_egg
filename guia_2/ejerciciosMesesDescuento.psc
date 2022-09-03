//  Una tienda ofrece para los meses de septiembre, octubre y noviembre un descuento del
//	10% sobre el total de la compra que realiza un cliente. Solicitar al usuario que ingrese un
//	mes y el importe de la compra. El programa debe calcular cuál es el monto total que se
//	debe cobrar al cliente e imprimirlo por pantalla.


Algoritmo sin_titulo
	
	Definir mesDeCompra Como Caracter;
	definir importeComprado, impCDescuento,impSDescuento Como Real
	
	Escribir "A continuacion indica el nombre del mes y luego el total de tu compra"
	Leer mesDeCompra, importeComprado
	
	impCDescuento= importeComprado*0.9;
	impSDescuento= importeComprado
	
	Segun mesDeCompra Hacer
		"septiembre" o "octubre" o "noviembre":
			Escribir "Tenes un 10% de descuento, tu total a pagar es: $", impCDescuento
		"enero" o "febrero" o "marzo" o "abril":
			Escribir  "Tu total a pagar es: $", impSDescuento			
		De Otro Modo:
			Escribir "Corrobora los datos ingresados"		
		Fin Segun
	
FinAlgoritmo
