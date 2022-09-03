//	Escriba un programa para obtener el grado de eficiencia de un operario de una f�brica de
//	tornillos, de acuerdo a las siguientes dos condiciones que se le imponen para un per�odo
//	de prueba:
// 	- Producir menos de 200 tornillos defectuosos.
//	- Producir m�s de 10000 tornillos sin defectos.
// 	El grado de eficiencia se determina de la siguiente manera:
//	- Si no cumple ninguna de las condiciones, grado 5.
//	- Si s�lo cumple la primera condici�n, grado 6.
//	- Si s�lo cumple la segunda condici�n, grado 7.
//	- Si cumple las dos condiciones, grado 8


Algoritmo sin_titulo
	Definir torCDefectos, torSDefectos Como Entero
	
	Escribir "Ingrese la cantidad de tornillos c/defectos y a continuacion s/defectos"
	Leer torCDefectos
	Leer torSDefectos
	
	Si ((torCDefectos > 200) Y (torSDefectos < 10000)) Entonces
		Escribir "Grado de eficiencia 5" 
		SiNo
			Si ((torCDefectos < 200) Y (torSDefectos < 10000)) Entonces
				Escribir "Grado de eficiencia 6"
				SiNo
					Si ((torCDefectos > 200) Y (torSDefectos > 10000)) Entonces
						Escribir "Grado de eficiencia 7"
						SiNo
							Si ((torCDefectos < 200) Y (torSDefectos > 10000)) Entonces
								Escribir "Grado de eficiencia 8"
							SiNo
								Escribir "Ingrese un valor correcto"
						FinSi
					FinSi
			FinSi
	Fin Si

FinAlgoritmo
