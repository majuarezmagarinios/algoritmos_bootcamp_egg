//	La función factorial se aplica a números enteros positivos. El factorial de un número entero 
//	positivo (!n) es igual al producto de los enteros positivos desde 1 hasta n:
//	n! = 1 * 2 * 3 * 4 * 5 * (n-1) * n
//  Escriba un programa que calcule las factoriales de todos los números enteros desde el 1 
//	hasta el 5. El programa deberá mostrar la siguiente salida: 
//	!1 = 1
//	!2 = 1*2 = 2
//	...
//	!5 = 1*2*3*4*5 = 120

Algoritmo sin_titulo
	Definir i, j, numUser, res Como Entero
	numUser= 5;
	res= 1;
	

	Para j=1 Hasta numUser Con Paso 1 Hacer
//	Muestro el número del cual se sacaran los factoriales
		Escribir "!", j, "= " Sin Saltar
		
		Para i=1 Hasta j Con Paso 1	
//	Imprimo el primer numero que como es 1 tendra un solo factorial. Con eso se evita que termine " !1= 1*= " y resulte "!1= 1"
			Si(j = 1) Entonces
				Escribir i Sin Saltar
				Escribir ""
			SiNo
//	Imprimo los factoriales de 2 en adelante
//	Evito que si se esta mostrando el último factorial se muestre el "*". Evitando terminar en "*="
				Si((j>1) Y (i < j)) Entonces
					Escribir i "*" Sin Saltar
				SiNo
					Escribir i Sin Saltar
				FinSi	
					
			FinSi
//	Guardo el resultado de la multiplicacion entre los numeros. 1*2*3*4*5
			res= res * i;
		FinPara
		
//	Como !1 tiene un solo factorial evito que aparezca duplicado el " = "
		Si(j > 1) Entonces
			Escribir " = ", res
		FinSi
		
		Escribir "";
		
//  Reseteo res
		res=1
	Fin Para
	
	
	
FinAlgoritmo
