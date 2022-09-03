//Necesitamos crear un sistema para una m�quina de reciclaje de botellas autom�tica. Dicha
//	m�quina nos pagar� dinero por la cantidad de pl�stico reciclado. Tenemos que ingresar nuestro
//	usuario y contrase�a para que se nos cargue el saldo por sistema a nuestra cuenta.
//	? Condici�n simple anidada: validaremos que el usuario sea "Albus_D", luego si esto es
//	verdadero, validaremos si la contrase�a es "caramelosDeLimon". Si la contrase�a es correcta
//	haremos que una variable llamada Login sea verdadera.
//	? Bucle Mientras: Este bloque de validaci�n de la contrase�a lo encerraremos en un bucle
//	Mientras para darle al usuario s�lo 3 intentos para poner la contrase�a.
//	? Bucle Hacer Mientras(Repetir): Una vez que el login sea verdadero, accederemos al men� de
//	opciones: "Ingresar botellas", "Consultar saldo" y "Salir"
//	? Ingresar Botellas: Primero preguntaremos cu�ntas botellas se va a ingresar al sistema. Una vez
//	que tenemos el n�mero vamos a usar un bucle para, a fin de ir ingresando cada botella. En
//	cada ciclo del bucle se debe generar un n�mero aleatorio entre 100 y 3000 gr, que va a ser el
//	peso de las botellas a reciclar (simulando que el usuario est� ingresando botellas en la
//	m�quina). Una vez generado, seg�n el peso del material, usaremos un condicional m�ltiple
//	para asignarle un valor monetario:
//	? Si es menos de 500 gr, corresponden $50
//	? Si es entre 501 gr y 1500 gr, corresponden $125
//	? Si es m�s de 1501 gr, corresponden $200
//	? Hecho esto, el programa debe informar al usuario por pantalla el valor que se le ofrece. Si el
//	usuario acepta, lo acreditamos a su saldo, sino se debe devolver el material (s�lo mostrar en
//	pantalla "Devolviendo material"). Para esto usaremos un condicional doble.
//	? Consultar saldo: revisaremos el valor monetario que tiene asignada la variable "saldo".
//	? Tanto al terminar "Ingresar Botellas" como "Consultar Saldo" debe volver al men� principal.

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
				Escribir "Ingresa opci�n "
				Escribir "1: Ingresar botellas, 2: Consultar saldo, 3: Salir"
				Leer opciMenu
				menu= falso
			Fin Mientras

			Segun opciMenu Hacer
				1:
					Escribir "�Cu�ntas botellas va a ingresar al sistema?";
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
						Escribir "Te corresponden $50, �Aceptas: OPCION 1 / Rechazas: OPCION 2?";
						Leer acepta;
						Si (acepta == 1) Entonces
							Saldo= 50
						SiNo
							Escribir "Devolviendo material"
						FinSi
					SiNo
						Si((totalPesoBote > 501) Y (totalPesoBote < 1500)) Entonces
							Escribir "Te corresponden $125, �Aceptas: OPCION 1 / Rechazas: OPCION 2?";
							Leer acepta;
							Si (acepta == 1) Entonces
								Saldo= 125
							SiNo
								Escribir "Devolviendo material"
							FinSi
						SiNo
							Si(totalPesoBote > 1501) Entonces
								Escribir "Te corresponden $200, �Aceptas: OPCION 1 / Rechazas: OPCION 2?";
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
