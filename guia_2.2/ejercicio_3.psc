//	Dada una secuencia de números ingresados por teclado que finaliza con un ?1, por
//	ejemplo: 5,3,0,2,4,4,0,0,2,3,6,0,......,-1; realizar un programa que calcule el promedio de los
//	números ingresados. Suponemos que el usuario no insertará número negativos.

Algoritmo sin_titulo
	Definir suma, num, count Como Real
	
	suma= 0;
	num=0
	count= 0;
	
	Mientras (num <> 1) Hacer
		Escribir "Ingresa un número";
		Leer num;
		si(num <> 1) Entonces
			suma= suma + num;
			count= count + 1;
		SiNo
			Escribir "Ingresaste un 1, finaliza la aplicación"
		FinSi
	Fin Mientras
	
	Escribir ""
	Escribir "- Total de la suma de  números ingresados: ", suma;
	Escribir "- Cantidad de números ingresados: ", count
	Escribir "- El promedio es => ", suma/count
	
FinAlgoritmo
