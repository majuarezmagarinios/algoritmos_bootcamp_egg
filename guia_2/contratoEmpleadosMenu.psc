//	Una empresa tiene personal de distintas �reas con distintas condiciones de contrataci�n y
//	formas de pago. El departamento de contabilidad necesita calcular los sueldos semanales
//	(lunes a viernes) en base a las 3 modalidades de sueldo:
//	a) comisi�n
//	b) salario fijo + comisi�n, y
//	c) salario fijo

//	a) Para la modalidad salario por comisi�n se debe ingresar el monto total de las ventas
//	realizadas en la semana, y el 40% de ese monto total corresponde al salario del
//	empleado.
//  b) Para la condici�n de salario fijo + comisi�n, se debe ingresar el valor que se paga por
//	hora, la cantidad de horas trabajadas semanalmente y el monto total de las ventas en
//	esa semana. En este tipo de contrato las horas extras no est�n contempladas y se fija
//	como m�ximo 40 horas por semana. La comisi�n por las ventas se calcula como 25%
//	del valor de venta total.
//	c) Finalmente, para la modalidad de salario fijo se debe ingresar el valor que se paga por
//	hora y la cantidad de horas trabajadas en la semana. En el caso de exceder las 40
//	horas semanales, las horas extras se deben pagar con un extra del 50% del valor de la
//	hora. Realizar un men� de opciones para poder elegir el tipo de contrato que tiene un
//empleado.
Algoritmo sin_titulo
	
	Definir ventas, pagoHora, cantidadHoras, horasExt Como Real;
	Definir tipoDeContrato Como Entero;

	Escribir "Ingresa el n�mero seg�n el tipo de contrato"
	Escribir "Comisi�n: 1,    Salario fijo + comisi�n: 2,    Salario fijo: 3"
	Leer tipoDeContrato
	
	Segun tipoDeContrato Hacer
		1:
			//Calculo Salario por comisi�n
			Escribir "Ingresa las ventas semanales"
			Leer ventas
			Escribir "El total a pagar es de: $", ventas *0.4
		2:
			//Calculo salario fijo + comisi�n
			Escribir "Ingrese la cantidad de horas trabajadas, las ventas y el valor por hora"
			Leer cantidadHoras
			Leer ventas
			Leer pagoHora
			Si(cantidadHoras > 40) Entonces
				cantidadHoras= 40
			FinSi
			Escribir "El total a pagar es de: $", (pagoHora * cantidadHoras) + (ventas *0.25)
		3:
			//Calculo salario fijo
			Escribir "Ingrese la cantidad de horas trabajadas, el valor por hora"
			Leer cantidadHoras
			Leer pagoHora
			
			Si(cantidadHoras > 40) Entonces
					horasExt = (cantidadHoras - 40) * 1.5
			FinSi
			Escribir "El total a pagar es de: $", ((pagoHora * 40)+ (pagoHora * horasExt))
			
		De Otro Modo:
			//Error
			Escribir "err"
	Fin Segun
	
FinAlgoritmo
