//	Es tu turno, diseña un condicional anidado que le pregunte al usuario si quiere tomar té o café y
//	en caso de que quiera tomar café, preguntar si solo o cortado y en caso de ser cortado, si prefiere
//	leche vegetal.

Algoritmo sin_titulo
	
	
	Definir userOption, optionCoffee , optionMilkCoffe Como Entero;
	
	Escribir "What would you like to drink? OPTION 1= tea / OPTION 2= coffee"
	Leer userOption
	
	Si (userOption = 1) Entonces
		Escribir "Your tea will be ready in a few minutes ;)"
		SiNo
			si(userOption = 2) Entonces
				Escribir "Would you like to drink your coffee with milk? OPTION 1= yes / OPTION 2= NOT"
				Leer optionCoffee
				si(optionCoffee = 1) Entonces
					Escribir "Do you want cows milk or non-dairy milk? OPTION 1= cows milk  /  OPTION 2= non-dairy milk"
					Leer optionMilkCoffe
					si(optionMilkCoffe = 1) Entonces
						Escribir "Your coffee with cows milk will be ready in a few minutes @:-)"
					SiNo
						Escribir "Your coffee with non-dairy milk be ready in a few minutes <|:-)"
					FinSi
				SiNo
					Escribir "Your coffee without milk, will be ready in a few minutes /:-)"
				FinSi
			FinSi
	Fin Si
	
	
	
FinAlgoritmo
