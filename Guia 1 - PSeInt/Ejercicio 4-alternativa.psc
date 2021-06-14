//A partir de una conocida cantidad de metros que el usuario ingresa a través del teclado 
//se debe obtener su equivalente en centímetros, en milímetros y en pulgadas. 
//Ayuda: 1 pulgada equivale a 2.54 centímetros
Algoritmo sin_titulo
	definir metros,cm, mm, pulgadas como real
	Escribir "Ingrese los metros"
	
	leer metros
	///en esta alternatiba guarde cada resultado en una variable.
	cm = metros *100
	mm = cm *10
	pulgadas = cm * 2.54 
	///como la ayuda decia q 1pulgada = 1cm use el resultado de cm como forma de resolucion.
	
	Escribir "Centimetros = ", cm
	escribir "Milimetros = ",mm
	Escribir "Pulgadas = ", pulgadasgadas
	
FinAlgoritmo

///cabe aclarar que apesar de que esta resolucion lleve mas pasos es un poco mas organizada y 
///facil de comprender que la otra alternativa