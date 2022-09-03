//	Una tienda ofrece para los meses de septiembre, octubre y noviembre un descuento del
//	10% sobre el total de la compra que realiza un cliente. Solicitar al usuario que ingrese un
//	mes y el importe de la compra. El programa debe calcular cuál es el monto total que se
//	debe cobrar al cliente e imprimirlo por pantalla.

Algoritmo sin_titulo
	
	Definir allUserPrechuse, tenPorcentOfPrice, finishPrice Como Real
	Definir discount, i Como Entero
	Definir mounth, a Como Caracter
	Dimension a[3];

	mounth= "";
	a[0]<- "septiembre";
	a[1]<- "octubre";
	a[2]<- "noviembre";
	
	Escribir "In what mounth did you buy?";
	Leer mounth;
	
	Escribir "Write the total price of your pruchases";
	Leer allUserPrechuse;
	
	tenPorcentOfPrice= allUserPrechuse * 0.1
	finishPrice= allUserPrechuse * 0.9
	
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		Si (a[i] = mounth) Entonces
			Escribir "El precio total por todas tus compras fue ", allUserPrechuse
			Escribir "te regalamos un 10% de descuento sobre tu total a pagar ", tenPorcentOfPrice
			Escribir "El total que debes abonar con el descuento es de: ", finishPrice
		Fin Si
	Fin Para
	
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		Si (a[i] <> mounth) Entonces
			Escribir "Tu total a pagar es de ", allUserPrechuse
		Fin Si
	Fin Para

FinAlgoritmo
