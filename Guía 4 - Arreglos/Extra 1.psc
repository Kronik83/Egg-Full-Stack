//Realizar un programa que rellene dos vectores al mismo tiempo, con 5 valores aleatorios
//y los muestre por pantalla.
Algoritmo sin_titulo
	///Defino los vectores y su tamaño = 5
	Dimension vecA[5],vecB[5]
	definir i, vecA,vecB Como Entero
	///los cargo aleatoriamente ambos a la vez
	para i = 0 Hasta 4
		vecA[i]=Aleatorio(-100,100)
		vecB[i]=Aleatorio(-100,100)
	FinPara
	///los muestro por medio del subproceso mostraVector
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
