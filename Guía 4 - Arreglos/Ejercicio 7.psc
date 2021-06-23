//Crear un subproceso que rellene dos arreglos de tama�o n, con n�meros aleatorios.
//Despu�s, hacer una funci�n que reciba los dos arreglos y diga si todos sus valores son
//iguales o no. La funci�n debe devolver el resultado de est� validaci�n, para mostrar el
//mensaje en el algoritmo. Nota: recordar el uso de las variables de tipo l�gico
Algoritmo sin_titulo
	definir n, resultado Como Entero
	definir log Como Logico
	Repetir
		Borrar Pantalla
		Escribir "Ingrese el tama�o de los vectores: " Sin Saltar
		leer n
	Mientras Que n<=0
	
	cargarVectores(n)
FinAlgoritmo

subproceso cargarVectores(a)
	definir ret,vectorC como logico
	definir i, vectorA, vectorB como entero 
	dimension vectorA[a]
	Dimension vectorB[a]
	dimension vectorC[a]
	para i = 0 hasta a-1
		vectorA[i]=Aleatorio(-100,100)
		vectorB[i]=Aleatorio(-100,100)
	FinPara
	para i = 0 hasta a-1
		si vectorA[i]= vectorB[i] Entonces
			vectorC[i]= Verdadero
		sino 
			vectorC[i]=Falso
		FinSi
	FinPara
	mostrarVector(vectorC, a, vectorA, vectorB)
FinSubProceso


SubProceso mostrarVector(c, n, a, b)
	definir i Como Entero
	escribir " A        B"
	para i=0 Hasta n-1
		si c[i] = Verdadero Entonces
			Escribir a[i], " = ",b[i]
		SiNo
			Escribir a[i], " <> ",b[i]
		FinSi
	FinPara
FinSubProceso
	