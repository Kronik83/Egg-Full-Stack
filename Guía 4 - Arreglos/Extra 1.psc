//Realizar un programa que rellene dos vectores al mismo tiempo, con 5 valores aleatorios
//y los muestre por pantalla.
Algoritmo sin_titulo
	Dimension vecA[5]
	Dimension vecB[5]
	definir i, vecA,vecB Como Entero
	para i = 0 Hasta 4
		vecA[i]=Aleatorio(-100,100)
		vecB[i]=Aleatorio(-100,100)
	FinPara
	Escribir "Vector A"
	mostrarVector(vecA)
	escribir "Vector B"
	mostrarVector(vecB)
FinAlgoritmo

SubProceso mostrarVector(a)
	definir i como entero
	
	para i = 0 hasta 4
		escribir a[i], " " Sin Saltar
		si i=4
			Escribir ""
		FinSi
	FinPara
FinSubProceso
