//Escribir un programa que calcule el precio promedio de un producto. El precio promedio 
//se debe calcular a partir del precio del mismo producto en tres establecimientos 
//distintos.
Algoritmo sin_titulo
	///variables reales pueden contener decimales
	definir precio,i,acumulador Como Real
	/// acumulador es una variables auxilir iniciada con el valor 0, la cual en el bucle va a ir sumando el valor de la precio
	acumulador = 0
	
	para i = 1 hasta 3 Hacer ///bucle q se repite desde 1 a 3
		///Este enunciado terminado con la variable i lo que hace es indicarme el numero de producto que estoy trabajando
		escribir "Ingrese el precio del producto N°", i 
		leer precio
		acumulador = acumulador +precio ///forma de uso de la variable que acumulador
	FinPara
	
	Escribir "Promedio de los precios =$",acumulador/3 ///Imprimo por pantalla el promedio
	
FinAlgoritmo

