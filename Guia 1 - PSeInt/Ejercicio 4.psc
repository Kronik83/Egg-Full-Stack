//A partir de una conocida cantidad de metros que el usuario ingresa a trav�s del teclado 
//se debe obtener su equivalente en cent�metros, en mil�metros y en pulgadas. 
//Ayuda: 1 pulgada equivale a 2.54 cent�metros
Algoritmo sin_titulo
	definir metros,centimetro, milimetros, pulgadas como real
	Escribir "Ingrese los metros"
	leer metros

	Escribir "Centimetros = ", metros * 100
	escribir "Milimetros = ",metros*1000
	///En el siguiente calculo lo que hago es primero (metros*100) calcular los centimetros y despues saco las pulgadas
	Escribir "Pulgadas = ", metros * 100 * 2.54
	
FinAlgoritmo
