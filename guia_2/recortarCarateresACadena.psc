Algoritmo recorteCadena
	Definir cade, res Como Caracter
	definir res2 Como Entero
	
	
	cade= "hola"
	res2= longitud(cade)
	
	//Para que aparezca el ultimo caracter
	res = subcadena(cade, res2-1,res2-1)
	Escribir res
	
	//Para que aparezca los ultimos dos caracteres
	res = subcadena(cade, res2-2,res2)
	Escribir res
	
FinAlgoritmo
