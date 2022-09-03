//	Crear una función llamada "Login", que recibe un nombre de usuario y una contraseña y que
//	devuelve Verdadero si el nombre de usuario es "usuario1" y si la contraseña es "asdasd".
//	Además, la función calculara el número de intentos que se ha usado para loguearse, tenemos
//	solo 3 intentos, si nos quedamos sin intentos la función devolverá Falso.

Funcion retorno <- Login( user, pass )
	Definir retorno Como Logico
	Definir count Como Entero;
	count= 1;
	retorno= Falso;
	
	
	Mientras ((user <> "usuario1") Y (pass <> "asdasd") Y (count < 3)) Hacer
		
		Escribir "Inser your user and then your pass"
		Leer user, pass;
		count= count + 1;
	Fin Mientras
		
		
	Si((user = "usuario1") Y (pass = "asdasd") Y (count <= 3)) Entonces
		retorno= verdadero;
	FinSi

Fin Funcion



Algoritmo sin_titulo
	Definir user, pass Como Caracter;
	Definir resultado Como Logico;
	user= ""
	pass= ""
	
	Escribir "Inser your user, next your pass"
	Leer user, pass;

	resultado= Login(user, pass);
	Escribir "El ingreso fue: ", resultado;
FinAlgoritmo
