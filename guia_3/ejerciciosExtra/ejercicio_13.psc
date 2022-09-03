//	Realice un algoritmo que solicite al usuario una fecha y muestre por pantalla la fecha anterior.
//	Para ello se deberá utilizar un procedimiento llamado diaAnterior que reciba una fecha
//	representada a través de tres enteros dia, mes y anio, y retorne la fecha anterior. Puede
//	asumir que dia, mes y anio representan una fecha válida. Realice pruebas de escritorio para
//	los valores dia=5, mes=10, anio=2012 y para dia=1, mes=3, anio=2004.

Algoritmo sin_titulo
	Definir dia, mes, anio Como Entero;
	Definir barra Como Caracter;
	barra= "/";
	
	Escribir "Ingrese el día, mes y año(4 dígitos)";
	Leer dia, mes, anio;
	
	diaAnterior(dia, mes, anio);
	
FinAlgoritmo

SubProceso diaAnterior(dia, mes, anio)
	Definir a Como Entero
	
	Si((dia < 1) Y (dia > 31) Y (mes < 1) Y (mes > 12) Y (anio < 1) Y (anio > 2050)) Entonces
		Escribir "Ingresaste una fecha no válida";
	SiNo
		
		anio= anio - 1;
		
		Si((mes - 1 = 0)) Entonces
			mes= 12;
			dia= 31;
		SiNo
			Si(((mes == 1) O (mes == 5) O (mes == 6) O (mes == 7) O (mes == 10) O (mes == 12)) Y (dia == 1)) Entonces
				dia= 30;
				mes= mes - 1
			SiNo
				Si(((mes == 2) o (mes == 4) O (mes == 6) O (mes == 9) O (mes = 11) Y (dia == 1))) Entonces
					dia= 31;
					mes= mes - 1
				SiNo
					Si((mes == 3) Y (dia == 1)) Entonces
						dia= 28;
						mes= mes - 1
					SiNo
						dia= dia -1;
						mes= mes -1;
					FinSi
				FinSi
			FinSi
			
			
		FinSi
		
		Escribir dia, "/", mes, "/", anio;

		
	FinSi
FinSubProceso
	