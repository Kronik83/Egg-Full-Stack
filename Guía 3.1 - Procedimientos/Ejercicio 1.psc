//Realizar un procedimiento que permita intercambiar el valor de dos variables de tipo
//entero. La variable A, debe terminar con el valor de la variable B
Algoritmo sin_titulo
	definir a, b Como Entero
	escribir "ingrese A y B"
	leer a, b 
	Escribir "A=",a," B=",b
	intercambio(a,b)
FinAlgoritmo

SubProceso intercambio (x,z)
	definir a como entero
	a=x
	x=z
	z=a
	escribir "Ahora A=",x," B=",z
FinSubProceso
	