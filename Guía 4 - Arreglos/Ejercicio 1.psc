//Realizar un programa que rellene un vector con 5 valores ingresados por el usuario y los
//muestre por pantalla.
Algoritmo sin_titulo
	Definir i,a, perro Como Entero
	///defino el vector perro con su tamaño de 5 elementos
	Dimension perro[5]
	escribir "ingrese un valor"
	///cargo los elementos en cada indice
	para i = 0 hasta 4
		leer perro[i]
	FinPara
	///muestro los elementos de cada indice del vector
	para i =0 hasta 4
		escribir perro[i]
	FinPara
FinAlgoritmo
