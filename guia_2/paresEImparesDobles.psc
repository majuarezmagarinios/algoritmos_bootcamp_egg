//	Solicitar al usuario que ingrese dos números enteros y determinar si ambos son pares o
//	impares. Mostrar en pantalla un mensaje que indique "Ambos números son pares" siempre
//	y cuando cumplan con la condición. En caso contrario se deberá imprimir el siguiente
//	mensaje "Los números no son pares, o uno de ellos no es par".

Algoritmo sin_titulo
	Definir num1, num2 Como Entero
	
	Escribir "Ingresa dos números enteros"
	Leer num1, num2
	
	
	
	Si(num1 == 0) Entonces
		Escribir num1, " Es cero"
	SiNo
		si(num1 MOD 2 <> 0) Entonces
			Escribir num1, " Es impar"
		SiNo
			Si (num1 MOD 2 = 0)  Entonces
				Escribir num1, " Es par"
			SiNo
				Escribir "err"
			FinSi
		FinSi		
	FinSi
	
	Si(num2 == 0) Entonces
		Escribir num2, " Es cero"
		SiNo
			si(num2 MOD 2 <> 0) Entonces
				Escribir num2, " Es impar"
			SiNo
				Si (num2 MOD 2 = 0)  Entonces
					Escribir num2, " Es par"
				SiNo
					Escribir "err"
				FinSi
			FinSi		
		FinSi
		
FinAlgoritmo
