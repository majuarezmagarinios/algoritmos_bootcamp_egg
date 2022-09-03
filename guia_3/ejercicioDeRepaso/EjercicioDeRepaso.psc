//	El algoritmo principal sólo debe llamar al subPrograma menu()
//	Cada subPrograma puede descomponerse, si hiciera falta, en otros subProgramas a
//	creatividad del programador
//	El menú debe quedar de la siguiente manera:
//		1 - Calcular muro de ladrillo
//		2 - Calcular viga de hormigón
//		3 - Calcular columnas de hormigón
//		4 - Calcular contrapisos
//		5 - Calcular techo
//		6 - Calcular pisos
//		7 - Calcular pintura
//		8 - Calcular iluminación
//		9 - Salir

// Solo mostrara el munú y le enviará la opcion a la funcion "ejecutaOpcionMenu"
Funcion menu()
	Definir opcionMenu, count Como Entero;
	Definir salir Como Logico;
	salir= falso;
	count= 0;

	Mientras (salir == falso) Hacer
//		Para generar espacio en el margen superior del menú a partir de la segunda vuelta
		Si(count > 0 ) Entonces
			Escribir "";
			Escribir "";
			Escribir "";	
		FinSi
		
		Escribir "Eliga una opción ingresando el número con el que inicia la frase";
		Escribir "";
		Escribir "1- Calcular muro de ladrillo";
		Escribir "2- Calcular viga de hormigón";
		Escribir "3- Calcular columnas de hormigón";
		Escribir "4 - Calcular contrapisos";
		Escribir "5 - Calcular techo";
		Escribir "6 - Calcular pisos";
		Escribir "7 - Calcular pintura";
		Escribir "8 - Calcular iluminación";
		Escribir "9 - Salir";
		Escribir "";
	
		Leer opcionMenu;
		
		Segun opcionMenu Hacer
			1:
				calcMuroLadrillo();
			2:
				calcularViga();
			3:
				calcColumna();
			4:
				calcContrapisos();
			5:
				calcTecho();
			6:
				calcPisos();
			7:
				calcPintura();
			8:
				calcIluminacion();
			9:
				salir= Verdadero;
			De Otro Modo:
				Escribir "err";
		Fin Segun
		
//		Para generar espacio en el margen superior del menú a partir de la segunda vuelta
		count= count +1
	FinMientras
Fin Funcion


Funcion calcMuroLadrillo()
	//	Nos debe pedir primero si el muro será de 20 o 30 cm de espesor
	Definir opcionMuro Como Entero;
	Definir superfiMuro, largo, alto Como Real;
	
	Escribir "Indica el espersor: 20cm (OPCION 1) o 30cm (OPCION 2)" Sin Saltar;
	leer opcionMuro;
	
//	Luego el largo 
	Escribir "Ingresa el largo" Sin Saltar;
	Leer Largo;
	
//	y el alto.
	Escribir "Ingresa el alto" Sin Saltar;
	Leer alto;
	
//	mostrar al usuario la superficie del muro
	superfiMuro= largo * alto;
	
//	mostrar la cantidad de materiales que necesitaremos para construirlo.
	Si(opcionMuro == 2) Entonces
//	Si el muro es de 30cm necesitaremos por metro cuadrado: 15.2 kg de cemento, 0.115 m3 de arena y 120 ladrillos.
		Escribir "";
		Escribir "-----------------------";
		Escribir "         MURO"
		Escribir "-----------------------";
		Escribir "ESPESOR: 20cm";
		Escribir "SUPERFICIE:", superfiMuro, " m";
		Escribir "CANTIDAD DE MATERIALES"
		Escribir "- Cemento: ", (15.2 * superfiMuro), " kg";
		Escribir "- Arena: ", (superfiMuro  * 1.115), " m3";
		Escribir "- Ladrillos: ", (120 * superfiMuro); 
	SiNo
//	Si el muro es de 20cm necesitaremos por metro cuadrado: 10.9 kg de cemento, 0.09 m3 de arena y 90 ladrillos.
		Escribir "";
		Escribir "-----------------------";
		Escribir "         MURO"
		Escribir "-----------------------";
		Escribir "ESPESOR: 20cm";
		Escribir "SUPERFICIE:", superfiMuro, " m";
		Escribir "CANTIDAD DE MATERIALES"
		Escribir "- Cemento: ", (10.9 * superfiMuro), " kg";
		Escribir "- Arena: ", (superfiMuro  * 1.09 ), " m3";
		Escribir "- Ladrillos: ", (90 * superfiMuro); 
	FinSi
Fin Funcion


Funcion calcularViga()
	Definir largoViga Como Real;

//	Nos debe pedir el largo de la viga.
	Escribir "Ingrea el largo de la viga en metros"
	leer largoViga;
	
// 	Por metro lineal de viga se necesitarán: 9 kg de cemento, 0.02 m3 de arena, 0.02 m2 de piedra, 4 m de hierro del 8 y 3 m de hierro del 4.
//	mostrar al usuario la cantidad de materiales necesaria.
	Escribir "";
	Escribir "-----------------------";
	Escribir "         VIGA"
	Escribir "-----------------------";
	Escribir "largo: ", largoViga, " m";
	Escribir "CANTIDAD DE MATERIALES"
	Escribir "- Cemento: ", (largoViga * 9), " kg";
	Escribir "- Arena: ", (largoViga * 1.02), " m3";
	Escribir "- Piedra: ", (largoViga * 1.02), " m3";
	Escribir "- Hierro del 8: ", (largoViga * 4), " m";
	Escribir "- hierro del 4: ", (largoViga * 3), " m";
Fin Funcion


Funcion calcColumna()
	Definir largoColumna Como Real;
//	Nos debe pedir el largo de la columna.
	
	Escribir "Ingrese el largo de la columna en metros"
	Leer largoColumna;
	
//	Por metro lineal de columna se necesitarán: 7.5 kg de cemento, 0.016 m3 de arena, 0.016 m2 de piedra, 6 m de hierro del 10 y 3 m de hierro del 4.
//	mostrar al usuario la cantidad de materiales necesaria.
	Escribir "";
	Escribir "-----------------------";
	Escribir "         COLUMNA"
	Escribir "-----------------------";
	Escribir "largo: ", largoColumna, " m";
	Escribir "CANTIDAD DE MATERIALES"
	Escribir "- Cemento: ", (largoViga * 7.5), " kg";
	Escribir "- Arena: ", (largoViga * 1.016), " m3";
	Escribir "- Piedra: ", (largoViga * 1.016), " m3";
	Escribir "- Hierro del 10: ", (largoViga * 6), " m";
	Escribir "- hierro del 4: ", (largoViga * 3), " m";
Fin Funcion


Funcion calcContrapisos()
//	Nos debe pedir espesor, ancho y largo del contrapiso a calcular.
	Definir espesor, ancho, largo, superfTotal Como Real;
	
	Escribir "Ingrese el espesor del contrapiso en metros" Sin Saltar;
	Leer espesor;
	
	Escribir "Ingrese el ancho del contrapiso en metros" Sin Saltar;
	Leer ancho;
	
	Escribir "Ingrese el largo del contrapiso en metros" Sin Saltar;
	Leer largo;
	
//	Se convierte espesor, ancho y largo a m3
	superfTotal= ((espesor /10) * (ancho /10) * (largo /10));
	
//	Por metro cúbico de contrapiso se necesita: 105 kg de cemento, 0.45 m3 de arena y 0.9 m3 de piedra.
//	mostrar al usuario la cantidad de materiales necesaria.
	Escribir "";
	Escribir "-----------------------";
	Escribir "       CONTRAPISO";
	Escribir "-----------------------";
	Escribir "Superficie: ", (espesor * ancho * largo), " m";
	Escribir "CANTIDAD DE MATERIALES"
	Escribir "- Cemento: ", (superfTotal * 105), " kg";
	Escribir "- Arena: ", (superfTotal * 1.045), " m3";
	Escribir "- Piedra: ", (superfTotal	 * 1.09), " m2";
Fin Funcion


Funcion calcTecho ()
//	Nos debe pedir espesor, ancho y largo del techo a calcular.
	Definir espesor, ancho, largo, superfTotal Como Real;
	
	Escribir "Ingrese el espesor del techo en metros" Sin Saltar;
	Leer espesor;
	
	Escribir "Ingrese el ancho del techo en metros" Sin Saltar;
	Leer ancho;
	
	Escribir "Ingrese el largo del techo en metros" Sin Saltar;
	Leer largo;
	
	superfTotal= (espesor * ancho * largo );
	
//	Por metro cuadrado de techo se necesita: 33 kg de cemento, 0.072 m3 de arena, 0.072 m3 de piedra, 7 m de hierro del 8 y 4 m de hierro del 6
//	mostrar al usuario la cantidad de materiales necesaria.
	Escribir "";
	Escribir "-----------------------";
	Escribir "       TECHO";
	Escribir "-----------------------";
	Escribir "Superficie: ", superfTotal, " m";
	Escribir "CANTIDAD DE MATERIALES"
	Escribir "- Cemento: ", (superfTotal * 33), " kg";
	Escribir "- Arena: ", (superfTotal * 1.072), " m3";
	Escribir "- Piedra: ", (superfTotal * 1.072), " m3";	
	Escribir "- Hierro del 8: ", (largoViga * 7), " m";
	Escribir "- hierro del 6: ", (largoViga * 4), " m";
Fin Funcion


Funcion calcPisos()
//	Nos debe pedir ancho y largo del paño de piso a colocar.
	Definir ancho, largo, superfTotal Como Real;
	
	Escribir "Ingrese el ancho del piso en metros cuadrados" Sin Saltar;
	Leer ancho;
	
	Escribir "Ingrese el largo del piso en metros cuadrados" Sin Saltar;
	Leer largo;
	
	superfTotal= (ancho * largo);
	
//	Teniendo esos datos se debe calcular la superficie y añadirle un 10% extra por recortes
//	Mostrar el resultado en m2
	Escribir "";
	Escribir "-----------------------";
	Escribir "       PISO";
	Escribir "-----------------------";
	Escribir "Superficie: ", superfTotal, " m2";
	Escribir "10% extra por recortes: ", (superfTotal * 0.1), " m2";
	Escribir "Cantidad de piso necesario: ", (superfTotal * 1.1), " m2";	
Fin Funcion


Funcion calcPintura( )
//	Nos debe pedir la superficie del muro y mostrar cuánta pintura necesitamos teniendo en
//	cuenta que rinde 6 m2 por litro de pintura.
	Definir superficie, superfTotal Como Real
	
	Escribir "Ingrese la superficie del muro en metros cuadrados" Sin Saltar;
	Leer superficie
	
	Escribir "";
	Escribir "-----------------------";
	Escribir "       PINTURA";
	Escribir "-----------------------";
	Escribir "Superficie: ", superficie, " m2";
	Escribir "La pintura rinde 6 metros cuadrados por litros de pintura";
	Escribir "Cantidad de pintura necesaria: ", (superficie / 6), " m2";	
Fin Funcion

Funcion calcIluminacion()
//	Nos debe pedir la superficie de la habitación.
	Definir superficie Como Real;
	
	Escribir "Ingrese la superficie que necesita iluminar en metros cuadrados" Sin Saltar;
	Leer superficie
	
//	La iluminación la calculamos de la siguiente forma: superficie * 0.20. Eso nos da la cantidad mínima de superficie de iluminación natural
//	(ventanas y puertas de vidrio). Mostrar resultado
	Escribir "";
	Escribir "-----------------------";
	Escribir "       ILUMINACIÓN";
	Escribir "-----------------------";
	Escribir "Superficie ingresada: ", superficie, " m2";
	Escribir "cantidad mínima de superficie de iluminación natural ", (superficie * 0.20);
Fin Funcion

Algoritmo sin_titulo
	menu();
FinAlgoritmo
