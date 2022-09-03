//Crea un procedimiento "convertirEspaciado", que reciba como argumento un texto y muestra
//una cadena con un espacio adicional tras cada letra.
//Por ejemplo, "Hola, tú" devolverá "H o l a , t ú ". Crea un programa principal donde se use
//dicho procedimiento.

Algoritmo sin_titulo
	Definir txt Como Caracter;
	
	Escribir "Escribe un texto" Sin Saltar;
	Leer txt;
	
	espacioCade(txt);
	
FinAlgoritmo


SubProceso espacioCade(txt por valor)
	Definir i, long Como Entero;
	Definir retorna Como Caracter;
	
	long= Longitud(txt);
	
	Para i=0 Hasta long Con Paso 1 Hacer
		retorna= Subcadena(txt, i, i)
		Si(retorna == " ") Entonces
			Escribir retorna Sin Saltar;
		SiNo
			Escribir retorna, " " Sin Saltar;
		FinSi
		
	FinPara
	
FinSubProceso
	