//Escriba un programa que lea dos n�meros enteros y realice el c�lculo de la suma, resta, 
//multiplicaci�n y divisi�n entre ambos valores. Los resultados deben mostrarse por 
//pantalla.
Algoritmo sin_titulo
	definir a, b Como Entero
	escribir "Ingrese el valor de A"
	leer a
	escribir "Ingrese el valor de B"
	leer b
	mientras b=0
		escribir "Ingrese un n�mero mayor a 0"
		leer b
	FinMientras
	escribir "A+B = ",a+b
	escribir "A-B=",a-b
	escribir "A*B=",a*b
	escribir "A/B=",a/b
	///en la division tenemos el problema q si ingresan 0, en la segunda vaiable no va a dar error
	///tmb esta el problema que si almacenamos los calculos en una variable,cuando usemos una variable 
	///para la division esta debe ser real, por si el resultado es con decimal
FinAlgoritmo
