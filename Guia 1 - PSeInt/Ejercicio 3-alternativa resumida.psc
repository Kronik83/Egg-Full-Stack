//Escribir un programa que calcule el precio promedio de un producto. El precio promedio 
//se debe calcular a partir del precio del mismo producto en tres establecimientos 
//distintos.
Algoritmo sin_titulo
	definir precio1, precio2, precio3, promedio Como Real
	
	escribir "Ingrese el precio del producto 1, 2 y 3 correspondientemente"
	///ingreso las tres variables en cada variable solo haciendo uso de un solo Leer 
	leer precio1, precio2, precio3
	
	promedio = (precio1+precio2+precio3)/3
	
	Escribir "Promedio de los precios =$",promedio
	
FinAlgoritmo

