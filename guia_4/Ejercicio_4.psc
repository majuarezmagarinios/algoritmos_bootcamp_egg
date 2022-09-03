//Realizar un programa con el siguiente men� y le pregunte al usuario que quiere hacer hasta
//que ingrese la opci�n Salir:
//	A. Llenar Vector A. Este vector es de tama�o N y se debe llenar de manera aleatoria
//	usando la funci�n Aleatorio(valorMin, valorMax) de PseInt.
//	B. Llenar Vector B. Este vector tambi�n es de tama�o N y se llena de manera aleatoria.
//	C. Llenar Vector C con la suma de los vectores A y B. La suma se debe realizar elemento
//a elemento. Ejemplo: C = A + B
//	D. Llenar Vector C con la resta de los vectores B y A. La resta se debe realizar elemento a
//elemento. Ejemplo: C = B - A
//E. Mostrar. Esta opci�n debe permitir al usuario decidir qu� vector quiere mostrar: Vector
//	A, B, o C.
//	F. Salir.
//NOTA: El rango de los n�meros aleatorios para los Vectores ser� de [-100 a 100]. La longitud
//		para todos los vectores debe ser la misma, por lo tanto, esa informaci�n s�lo se solicitar� una
//vez.

Algoritmo Eje4Guia4
	Definir a, b, c, d, n, i Como Entero
	Definir eleccion, op Como Caracter
	Escribir "Por favor ingrese la dimensi�n del vector"
	leer n
	Dimension a(n), b(n), c(n), d(n)
Repetir 
	Escribir "Que deseea hacer:"
	Escribir "Ingrese la letra A para Llenar Vector A"
	Escribir "Ingrese la letra B para Llenar Vector B"
	Escribir "Ingrese la letra C para Llenar Vector C con la suma de los vectores A y B"
	Escribir "Ingrese la letra D para Llenar Vector C con la resta de los vectores B y A"
	Escribir "Ingrese la letra E para Mostrar el Vector A, B, C o D"
	Escribir "Ingrese la letra F para Salir"
	Leer eleccion
	eleccion=Mayusculas(eleccion)
	

	Si eleccion<>"F" Entonces
	Segun eleccion Hacer
		"A":
			Para i=0 hasta n-1 hacer
				a(i)=Aleatorio(-100, 100)
			FinPara
		"B":
			Para i=0 hasta n-1 hacer
				b(i)=Aleatorio(-100, 100)
			FinPara
		"C":
			Para i=0 hasta n-1 Hacer
				c(i)=a(i)+b(i)
			FinPara
		"D":
			Para i=0 hasta n-1 Hacer
				d(i)=b(i)-a(i)
			FinPara
		"E":
			Escribir "�Qu� vector desea visualizar, A, B o C?"
			Leer op
			op=Mayusculas(op)
			Segun op Hacer
				"A":
					Para i=0 hasta n-1 Hacer
						Escribir sin saltar "[",a(i),"]"
					FinPara
				"B":
					Para i=0 hasta n-1 Hacer
						Escribir sin saltar "[",b(i),"]"
					FinPara
				"C":
					Para i=0 hasta n-1 Hacer
						Escribir sin saltar "[",c(i),"]"
					FinPara
				"D":
					Para i=0 hasta n-1 Hacer
						Escribir sin saltar "[",d(i),"]"
					FinPara
			FinSegun
			Escribir""
	FinSegun
FinSi
Mientras Que eleccion<>"F"
Escribir "hasta la vista baby ;)"	
FinAlgoritmo
