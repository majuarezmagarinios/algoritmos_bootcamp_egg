//	Realizar una funci�n que calcule y retorne la suma de todos los divisores del n�mero n
//	distintos de n. El valor de n debe ser ingresado por el usuario.

Funcion r <- contarDivisores(n)
	Definir i, r Como Entero;
	r=0;
	
	Escribir "El total es: " Sin Saltar;
	
	Para i=1 Hasta n Con Paso 1 Hacer
		Si(n MOD i == 0) Entonces
			r= r + i;
			Si(i < n) Entonces
				Escribir i " + " Sin Saltar
			SiNo
				Escribir i Sin Saltar
			FinSi
		FinSi
	FinPara

Fin Funcion


Algoritmo sin_titulo
	Definir n, resultado Como Entero;
	
	Escribir "Ingresa un n�mero";
	Leer n;
	
	resultado= contarDivisores(n);
	
	Escribir " = ", resultado
FinAlgoritmo
