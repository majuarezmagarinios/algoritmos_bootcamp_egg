//	Calcular las calificaciones de un grupo de alumnos. La nota final de cada alumno se
//	calcula según el siguiente criterio: la parte práctica vale el 10%; la parte de problemas vale
//	el 50% y la parte teórica el 40%. El programa leerá el nombre del alumno, las tres notas
//	obtenidas, mostrará el resultado por pantalla, y a continuación volverá a pedir los datos del
//	siguiente alumno hasta que el nombre sea una cadena vacía. Las notas deben estar
//	comprendidas entre 0 y 10, y si no están dentro de ese rango no se imprimirá el promedio
//	y se mostrará un mensaje de error.

Algoritmo sin_titulo
	Definir i Como Entero;
	Definir cantAlum, notaPrac, notaProb, notaTeor, notaFinl Como Real;
	Definir nombAlum Como Caracter;
	Definir rango, rango2, rango3 Como Logico;
	notaPrac= 0;
	notaProb= 0;
	notaTeor= 0;
	notaFinl= 0;
	cantAlum= 0;
	rango= falso;
	rango2= verdadero;
	rango3= Verdadero;
	nombAlum= "";
	
//	Solicito la cantidad de alumnos, falso repite, verdadero avanza
	Mientras (cantAlum <= 0) Hacer
		Escribir "Ingresa la cantidad de alumnos =" Sin Saltar;
		Leer cantAlum;
		Si(cantAlum <= 0) Entonces
			Escribir "La cantidad de alumnos debe ser mayor a 0";
		FinSi
		Escribir ""
	FinMientras
	
//	Solicito el nombre del alumno, si es "" finalizo el programa, verdadero escribo el nombe del alumno y termino el bucle
	Mientras (rango2) Hacer
		Escribir ""
		
		Escribir "Ingresa el nombre del alumno =", Sin Saltar;
		Leer nombAlum;
		Si(nombAlum = "") Entonces
			rango2= falso;
			rango3= falso;
			Escribir "No pusiste nombre, finaliza el programa"
		SiNo
			Escribir "";
			Escribir "-------------------------------"
			Escribir "ALUMNO: ", nombAlum
			Escribir "-------------------------------"
			rango2= falso;
		FinSi
	FinMientras
	
	
// 	Si i mayor que 1 no pregunto el nombre ya que se consulto esto en el bucle anterior
	Mientras (rango3) Hacer
		Para i=1 Hasta cantAlum Con Paso 1 Hacer
			
//	Esto se ejecutara cuando el bucle de su sengunda vuelta ya que se consulto 
//	el nombre del alumno en el bucle anterior, caso contrario se preguntaría dos veces el nombre
			Si(i > 1) Entonces
				Escribir ""
				Escribir ""
				Escribir "Ingresa el nombre del alumno =", Sin Saltar;
				Leer nombAlum;
			FinSi
				
//	Se coloca para evitar que a partir de la segunda vuelta del bucle "PARA" (por eso i mayor que 1) cuando se le consulte el nombre del 
//	alumno al usuario y este no pase nombre, se cargue igual el valor de la variable nombAlumb, haciendo que aparezcan los guiones medios
//	y el valor de la variable vacia
				Si((nombAlum <> "") Y (i > 1)) Entonces
					Escribir "";
					Escribir "-------------------------------"
					Escribir "ALUMNO: ", nombAlum
					Escribir "-------------------------------"
				FinSi
		
//	Si el nombre ingresado es una cadena vacia se finaliza el bucle
			Si(nombAlum= "") Entonces
				rango3=Falso;
				Escribir "No pusiste nombre, finaliza el programa";
			SiNo
				
//	Solicito la nota "practico", si no estan en el rango 0 a 10 se repite el bucle			
				Repetir
					Escribir "Ingresa la nota en práctica (10%) =", Sin Saltar;
					Leer notaPrac;
					Si((notaPrac < 0) o (notaPrac > 10)) Entonces
						Escribir ""
						Escribir "ERROR: ¡La nota no puede ser menor a 0 ni mayor a 10!"
						Escribir ""
						rango= Verdadero;
					SiNo
						rango= falso;
					FinSi
				Mientras Que (rango)
				
//	Solicito la nota "problema", si no estan en el rango 0 a 10 se repite el bucle			
				Repetir
					Escribir "Ingresa la nota en problemas (50%) =", Sin Saltar;
					Leer notaProb;
					Si((notaProb < 0) o (notaProb > 10)) Entonces
						Escribir ""
						Escribir "ERROR: ¡La nota no puede ser menor a 0 ni mayor a 10!"
						Escribir ""
						rango= Verdadero;
					SiNo
						rango= falso;
					FinSi
				Mientras Que (rango)
				
//	Solicito la nota "teoría", si no estan en el rango 0 a 10 se repite el bucle			
				Repetir
					Escribir "Ingresa la nota en teoría (40%) =", Sin Saltar;
					Leer notaTeor;
					Si((notaTeor < 0) o (notaTeor > 10)) Entonces
						Escribir ""
						Escribir "ERROR: ¡La nota no puede ser menor a 0 ni mayor a 10!"
						Escribir ""
						rango= Verdadero;
					SiNo
						rango= falso;
						Escribir ""
					FinSi
				Mientras Que (rango)
				
//  Muestro el total ponderado para las notas: práctica, problemas, teoría y la nota final
				Escribir "- Nota en práctica: " (notaPrac *0.1);
				Escribir "- Nota en problemas: ", (notaProb * 0.5);
				Escribir "- Nota en teoría: ", (notaTeor * 0.4);
				Escribir "- Nota final => ", ((notaPrac *0.1) + (notaProb * 0.5) + (notaTeor * 0.4))
				Escribir ""
				Escribir ""
				
//  Si la cantidade de iteracciones es igual a la cantidad de alumnos ingresados paso a falso la variable rango3
//	para que no se vuelva a ejecutar el bucle mientras 
				Si(i == cantAlum) Entonces
					rango3= falso;
				FinSi
			FinSi
		FinPara
		
	FinMientras
FinAlgoritmo