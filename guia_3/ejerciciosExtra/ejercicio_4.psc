//	Los empleados de una fábrica trabajan en dos turnos: Diurno y Nocturno. Se desea calcular el
//	jornal diario de acuerdo con las siguientes reglas:
//	a) La tarifa de las horas diurnas es de $ 90
//	b) La tarifa de las horas nocturnas es de $ 125
//	c) En caso de ser feriado, la tarifa se incrementa en un 10% si el turno es diurno y en
//		un 15% si el turno es nocturno.
//	El programa debe solicitar la siguiente información al usuario: el nombre del trabajador, el día
//	de la semana, el turno (diurno o nocturno) y la cantidad de horas trabajadas. Además,
//	debemos preguntarle al usuario si el día de la semana (lunes, martes, miércoles, etc.) era
//	festivo o no, para poder calcular el jornal diario. Utilice una función para realizar el cálculo.

Funcion retorno <- calcJornalDiario (nombTrabaj, diaDSemana, turno, diaFestivo, horas)
//	resultHorasEDF (resultado de cantidad de horas trabajadas en Dia Festivo terminacion EDF)
	Definir retorno, resultHorasSDF, resultHorasEDF, feriadoDiur, feriadoNoct Como Real;
	Definir horDiurnas, horNocturnas Como Entero;

//	a) La tarifa de las horas diurnas es de $ 90
	horDiurnas= 90;
//	b) La tarifa de las horas nocturnas es de $ 125
	horNocturnas= 125;
//	Feriado diurno
	feriadoDiur= 1.10;
//	Feriado nocturno
	feriadoNoct= 1.15;
	
	resultHorasSDF= 0;
	resultHorasEDF= 0;
	
	
//	Evalua si el Turno fue diurno (1) o nocturno(2)
	Si (turno == 1) Entonces
		resultHorasSDF= (horas * horDiurnas)
		
		Si(diaFestivo == 1) Entonces
//		Aumento de un 10% por turno diurno un dia festivo 
			resultHorasEDF= resultHorasSDF * feriadoDiur;
			Escribir "";
			Escribir "--------------------------";
			Escribir "Empleado: ", nombTrabaj;
			Escribir "--------------------------";
			Escribir "Día trabajado: ", diaDSemana;
			Escribir "Feriado: Sí";
			Escribir "Cantidad de Horas trabajadas: ", horas;
			Escribir "Paga normal: $", resultHorasSDF
			Escribir "Paga por feriado diurno (10% más): $", (resultHorasSDF * 0.1);
			Escribir "Pago total $", resultHorasEDF
			Escribir "";
		SiNo
			Escribir "";
			Escribir "--------------------------";
			Escribir "Empleado: ", nombTrabaj;
			Escribir "--------------------------";
			Escribir "Día trabajado: ", diaDSemana;
			Escribir "Feriado: no";
			Escribir "Cantidad de Horas trabajadas: ", horas;
			Escribir "Paga total: $", resultHorasSDF
			Escribir "";
		FinSi
	SiNo
		resultHorasSDF= (horas * horNocturnas)
		Si(diaFestivo == 1) Entonces
			//		Aumento de un 10% por turno diurno un dia festivo 
			resultHorasEDF= (resultHorasSDF * feriadoNoct);
			Escribir "";
			Escribir "--------------------------";
			Escribir "Empleado: ", nombTrabaj;
			Escribir "--------------------------";
			Escribir "Día trabajado: ", diaDSemana;
			Escribir "Feriado: Sí";
			Escribir "Cantidad de Horas trabajadas: ", horas;
			Escribir "Paga normal: $", resultHorasSDF
			Escribir "Paga por feriado diurno (10% más): $", (resultHorasSDF * 0.1);
			Escribir "Pago total $", resultHorasEDF
			Escribir "";
		SiNo
			Escribir "";
			Escribir "--------------------------";
			Escribir "Empleado: ", nombTrabaj;
			Escribir "--------------------------";
			Escribir "Día trabajado: ", diaDSemana;
			Escribir "Feriado: no";
			Escribir "Cantidad de Horas trabajadas: ", horas;
			Escribir "Paga total: $", resultHorasSDF
			Escribir "";
		FinSi
		
	Fin Si	
Fin Funcion


Algoritmo sin_titulo
	Definir nombTrabaj, diaDSemana Como Caracter;
	Definir horas, turno, diaFestivo Como Entero;
	Definir resultado Como Real;
	
	Escribir "Ingrese el nombre del trabajador " Sin Saltar;
	Leer nombTrabaj;
	
	Escribir "Ingrese el día de la semana " Sin Saltar;
	Leer diaDSemana;
	
	Escribir "Si el turno fue diurno ingrese 1 o si fue nocturno ingrese 2 " Sin Saltar;
	Leer turno;
	
	Escribir "¿El día trabajado era festivo? Si(Opcion 1), NO(Opcion 2) " Sin Saltar;
	Leer diaFestivo;
	
	Escribir "Ingrese la cantida de horas trabajadas " Sin Saltar;
	Leer horas;
	
//	NOTA: SI DA ERROR PASAR HORAS A CARACTER Y LUEGO EN LA FUNCION CONVERTIR A ENTERO
	resultado= calcJornalDiario(nombTrabaj, diaDSemana, turno, diaFestivo, horas);
FinAlgoritmo
