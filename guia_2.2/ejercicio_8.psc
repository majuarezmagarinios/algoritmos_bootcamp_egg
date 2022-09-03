//	Un docente de Programación tiene un listado de 3 notas registradas por cada uno de sus
//	N estudiantes. La nota final se compone de un trabajo práctico Integrador (35%), una
//	Exposición (25%) y un Parcial (40%). El docente requiere los siguientes informes claves de
//	sus estudiantes:
//	§ Nota promedio final de los estudiantes que reprobaron el curso. Un estudiante
//	reprueba el curso si tiene una nota final inferior a 6.5
//	§ Porcentaje de alumnos que tienen una nota de integrador mayor a 7.5.
//	§ La mayor nota obtenida en las exposiciones.
//	§ Total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5.
//	El programa pedirá la cantidad de alumnos que tiene el docente y en cada alumno pedirá
//	las 3 notas y calculará todos informes claves que requiere el docente.

Algoritmo sin_titulo
	Definir i, cantAlum, cont Como Entero;
	Definir integrador, exposicion, parcial, nota, promFinal Como Real;
	Definir apruebIntegra, cantAlumnos, rangoParcial Como Real;
	
	cantAlum= 0;
	cont= 0;
	integrador= 0;
	exposicion= 0;
	parcial= 0;
	nota= 0;
	promFinal= 0;
	apruebIntegra= 0;
	cantAlumnos= 0;
	rangoParcial= 0;
	
	Escribir "Escriba la cantidad de alumnos";
	Leer cantAlum
	Escribir "cantidad de alumnos: ", cantAlum
	
	Para i=1 Hasta cantAlum Con Paso 1 Hacer
		Escribir  " ";
		Escribir  " ";
		Escribir "--------------------------------";
		Escribir "Ingrese las notas del alumno: ", i
		Escribir "--------------------------------";
		
		Escribir "Nota integrador =" Sin Saltar
		Leer integrador
		Escribir "Nota exposición =" Sin Saltar
		Leer exposicion
		Escribir "Nota parcial    =" Sin Saltar
		Leer parcial
		
//		Se calcula la nota final
		nota= ((integrador * 0.35) + (exposicion * 0.25) + (parcial * 0.40));
		
//		Alumnos que tienen notas mayores a 7.5 en el integrador
		cantAlumnos= cantAlumnos + 1
		si(integrador > 7.5) Entonces
			apruebIntegra= apruebIntegra + 1
		FinSi
		
//		Total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5.
		Si((parcial>4) Y (parcial<7.5)) Entonces
			rangoParcial= rangoParcial + 1;
		FinSi
		
//		Evalua si el alumno desaprobo o no
		si(nota < 6.5) Entonces
			Escribir " "
			Escribir "NOTA ALUMNO ", i, " 	=>  Desaprobó con ", nota
//			Nota promedio final de los estudiantes que reprobaron el curso
			cont = cont +1
			promFinal= (nota + promFinal)/cont
		SiNo
			
				Escribir " "
				Escribir "NOTA ALUMNO ", i, " =>  Aprobó con ", nota
				Escribir "En buena hora!!"
			
		FinSi
	FinPara	
	
	Escribir ""
	Escribir ""
	Escribir ""
	Escribir "- Nota promedio de los estudiantes que reprobaron  => ", promFinal;
	Escribir "- Alumnos con integrador mayor a 7.5  => ", redon((apruebIntegra * 100) / cantAlumnos), "%";
	Escribir "- Total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5  => ", rangoParcial;
	
FinAlgoritmo
