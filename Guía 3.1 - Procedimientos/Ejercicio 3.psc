//Realizar un procedimiento que permita realizar la división entre dos números y muestre
//el cociente y el resto utilizando el método de restas sucesivas.
//El método de división por restas sucesivas consiste en restar el dividendo con el
//divisor hasta obtener un resultado menor que el divisor, este resultado es el residuo, y
//el número de restas realizadas es el cociente. Por ejemplo: 50 / 13:
//		50 ? 13 = 37 una resta realizada
//		37 ? 13 = 24 dos restas realizadas
//		24 ? 13 = 11 tres restas realizadas
//	dado que 11 es menor que 13, entonces: el residuo es 11 y el cociente es 3.

Algoritmo sin_titulo
	definir a, b Como Entero
	Escribir "Ingrese el dividendo y divisor"
	leer a
	leer b
	repetir 
		si b <=0 Entonces
			Escribir "El divisor debe ser mayor que 0 , ingreselo nuevamente"
			leer b
		FinSi
	Mientras Que b<=0
	resto(a, b)
FinAlgoritmo

subproceso resto(a,b)
	definir aux Como Entero
	aux=0
	mientras a >= b Hacer
		a = a-b
		aux = aux+1
	FinMientras
	
	escribir "Residuo= ",a," Cociente= ",aux
FinSubProceso
	