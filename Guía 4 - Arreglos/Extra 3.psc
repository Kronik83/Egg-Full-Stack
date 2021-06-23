//Crear dos vectores que tengan el mismo tamaño (el tamaño se pedirá por teclado) y
//almacenar en uno de ellos nombres de personas como cadenas. En el segundo vector
//se debe almacenar la longitud de cada uno de los nombres (para ello puedes usar la
//función Longitud() de PseInt). Mostrar por pantalla cada uno de los nombres junto con su longitud.
Algoritmo sin_titulo
	definir i, n, vecB Como Entero
	definir vecA Como Caracter
	escribir "Ingrese el tamaño del vector"
	leer n
	Dimension vecA[n], vecB[n]
	para i=0 hasta n-1
		escribir "Ingrese el ",i+1,"° Nombre:" Sin Saltar
		leer vecA[i]
		vecB[i]=Longitud(vecA[i])
	FinPara
	
	mostrarVector(vecA, vecB, n)
	
FinAlgoritmo

SubProceso mostrarVector(a,b,n)
	definir i como entero
	para i = 0 hasta n-1
		Escribir a[i] ," Longitud = ", b[i]
	FinPara
FinSubProceso
	