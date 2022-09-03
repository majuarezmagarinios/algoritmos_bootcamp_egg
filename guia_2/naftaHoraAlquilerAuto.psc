//	La empresa "Te llevo a todos lados" está destinada al alquiler de autos y tiene un sistema
//	de tarifa que consiste en cobrar el alquiler por hora. Si el cliente devuelve el auto dentro
//	de las 2 horas de uso el valor que corresponde pagar es de $400 pesos y la nafta va de
//	regalo. Cuando el cliente regresa a la empresa pasadas las 2 horas, se ingresan la
//	cantidad de litros de nafta gastados y el tiempo transcurrido en horas. Luego, se le cobra
//	40 pesos por litro de nafta gastado, y la hora se fracciona en minutos, cobrando un total
//	de $5,20 el minuto de uso. Realice un programa que permita registrar esa información y el
//	total a pagar por el cliente.

Algoritmo sin_titulo
	Definir hora, horaConduc Como Entero
	Definir valorHora, valorNafta, naftaConduc, totalAPagar, totalAPagarNafta, totalAPagarHora Como Real;
	
	Escribir "A continuacion escriba los litros de nafta y luego las horas utilizadas";
	Leer naftaConduc, horaConduc;
	
	hora= 60;
	valorHora= 5.20;
	valorNafta= 40;
	horaConduc=horaConduc*60;
	
	totalAPagarNafta= (naftaConduc * valorNafta)
	totalAPagarHora= (horaConduc  * valorhora)
	
	Si(horaConduc < (hora * 2)) Entonces
		Escribir "Total a pagar por el tiempo de uso es: $400"
		Escribir "Total a pagar por la nafta: $0"
	SiNo
		Escribir "Total a pagar por la nafta: ", totalAPagarNafta
		Escribir "Total a pagar por el tiempo de uso es:  ", totalAPagarHora 
	FinSi
	
	
FinAlgoritmo
