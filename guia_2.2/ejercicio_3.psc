//	Dada una secuencia de n�meros ingresados por teclado que finaliza con un ?1, por
//	ejemplo: 5,3,0,2,4,4,0,0,2,3,6,0,......,-1; realizar un programa que calcule el promedio de los
//	n�meros ingresados. Suponemos que el usuario no insertar� n�mero negativos.

Algoritmo sin_titulo
	Definir suma, num, count Como Real
	
	suma= 0;
	num=0
	count= 0;
	
	Mientras (num <> 1) Hacer
		Escribir "Ingresa un n�mero";
		Leer num;
		si(num <> 1) Entonces
			suma= suma + num;
			count= count + 1;
		SiNo
			Escribir "Ingresaste un 1, finaliza la aplicaci�n"
		FinSi
	Fin Mientras
	
	Escribir ""
	Escribir "- Total de la suma de  n�meros ingresados: ", suma;
	Escribir "- Cantidad de n�meros ingresados: ", count
	Escribir "- El promedio es => ", suma/count
	
FinAlgoritmo
