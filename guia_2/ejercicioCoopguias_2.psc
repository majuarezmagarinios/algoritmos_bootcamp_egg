//Necesitamos crear un sistema para una máquina de reciclaje de botellas automática. Dicha
//	máquina nos pagará dinero por la cantidad de plástico reciclado. Tenemos que ingresar nuestro
//	usuario y contraseña para que se nos cargue el saldo por sistema a nuestra cuenta.
//	? Condición simple anidada: validaremos que el usuario sea "Albus_D", luego si esto es
//	verdadero, validaremos si la contraseña es "caramelosDeLimon". Si la contraseña es correcta
//	haremos que una variable llamada Login sea verdadera.
//	? Bucle Mientras: Este bloque de validación de la contraseña lo encerraremos en un bucle
//	Mientras para darle al usuario sólo 3 intentos para poner la contraseña.
//	? Bucle Hacer Mientras(Repetir): Una vez que el login sea verdadero, accederemos al menú de
//	opciones: "Ingresar botellas", "Consultar saldo" y "Salir"
//	? Ingresar Botellas: Primero preguntaremos cuántas botellas se va a ingresar al sistema. Una vez
//	que tenemos el número vamos a usar un bucle para, a fin de ir ingresando cada botella. En
//	cada ciclo del bucle se debe generar un número aleatorio entre 100 y 3000 gr, que va a ser el
//	peso de las botellas a reciclar (simulando que el usuario está ingresando botellas en la
//	máquina). Una vez generado, según el peso del material, usaremos un condicional múltiple
//	para asignarle un valor monetario:
//	? Si es menos de 500 gr, corresponden $50
//	? Si es entre 501 gr y 1500 gr, corresponden $125
//	? Si es más de 1501 gr, corresponden $200
//	? Hecho esto, el programa debe informar al usuario por pantalla el valor que se le ofrece. Si el
//	usuario acepta, lo acreditamos a su saldo, sino se debe devolver el material (sólo mostrar en
//	pantalla "Devolviendo material"). Para esto usaremos un condicional doble.
//	? Consultar saldo: revisaremos el valor monetario que tiene asignada la variable "saldo".
//	? Tanto al terminar "Ingresar Botellas" como "Consultar Saldo" debe volver al menú principal.

Algoritmo sin_titulo
	Definir count, i, cantBote, opciMenu, acepta Como Entero;
	Definir pesoBote, totalPesoBote, saldo Como Real;
	Definir User, passUser Como Caracter;
	Definir login, menu Como Logico;
	count= 0;
	opciMenu= 0;
	acepta= 0;
	totalPesoBote= 0;
	saldo= 0;
	user= "";
	passUser= "";
	login= falso;
	menu= verdadero;
	
	Escribir "Ingrese user";
	Leer user;
	Si((user = "Albus_D" )) Entonces
	
		Repetir
			Escribir "Ingrese pass"
			Leer passUser
			Si(passUser = "caramelosDeLimon") Entonces
				login= Verdadero;
				Escribir "Ingresaste!!"
			SiNo
				Escribir "Este fue tu intento ", count+1, " de 3"
			FinSi
			count= count + 1;
		Mientras Que (count < 3 Y login= falso)
		
		
		Si(login) Entonces

			Mientras (menu) Hacer
				Escribir ""
				Escribir "Ingresa opción "
				Escribir "1: Ingresar botellas, 2: Consultar saldo, 3: Salir"
				Leer opciMenu
				menu= falso
			Fin Mientras

			Segun opciMenu Hacer
				1:
					Escribir "¿Cuántas botellas va a ingresar al sistema?";
					Leer cantBote;
					Para i=1 Hasta cantBote Con Paso 1 Hacer
						pesoBote= aleatorio(100, 3000);
						Escribir "Botella ", i, " pesa ", pesoBote, "gr.";
						totalPesoBote= totalPesoBote + pesoBote;
					Fin Para
					Escribir "-------------------------"
					Escribir "Peso total ", totalPesoBote, "gr";
					Escribir "-------------------------"
					
					Si(totalPesoBote < 500) Entonces
						Escribir "Te corresponden $50, ¿Aceptas: OPCION 1 / Rechazas: OPCION 2?";
						Leer acepta;
						Si (acepta == 1) Entonces
							Saldo= 50
						SiNo
							Escribir "Devolviendo material"
						FinSi
					SiNo
						Si((totalPesoBote > 501) Y (totalPesoBote < 1500)) Entonces
							Escribir "Te corresponden $125, ¿Aceptas: OPCION 1 / Rechazas: OPCION 2?";
							Leer acepta;
							Si (acepta == 1) Entonces
								Saldo= 125
							SiNo
								Escribir "Devolviendo material"
							FinSi
						SiNo
							Si(totalPesoBote > 1501) Entonces
								Escribir "Te corresponden $200, ¿Aceptas: OPCION 1 / Rechazas: OPCION 2?";
								Leer acepta;
								Si (acepta == 1) Entonces
									Saldo= 200
								SiNo
									Escribir "Devolviendo material"
								FinSi
							FinSi
						FinSi
					FinSi
				2:
					Escribir "Tu saldo es de ", saldo;
				3:
					menu= verdadero;
				De Otro Modo:
					Escribir "error"
			Fin Segun
		FinSi
	SiNo
		Escribir "Ingresaste el usuario incorrecto"
		Escribir "Fin de app"
	FinSi
FinAlgoritmo
