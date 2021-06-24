//Crear un subproceso que rellene dos arreglos de tamaño n, con números aleatorios.
//Después, hacer una función que reciba los dos arreglos y diga si todos sus valores son
//iguales o no. La función debe devolver el resultado de está validación, para mostrar el
//mensaje en el algoritmo. Nota: recordar el uso de las variables de tipo lógico

///ACLARO BAJO MI INTERPRETACION NO CREO Q SE DEBA MOSTRAR SI UN VECTOR ES IGUAL AL OTRO, 
///YA QUE ES MUY COMPLICADO Q DE OBTENGAMOS DOS VECTORES IGUALES, DADO DE CADA UNO SE CARGO
///FORMA ALEATORIA.
///PARA LO CUAL INTERPRETO O CREO MAS COMBENIENTE ANALIZAR LA IGUALDAD LOS ELEMENTOS DE CADA UNO DE ELLOS 

Algoritmo sin_titulo
	definir n, resultado Como Entero
	definir log Como Logico
	///control de tamaño si "n" es menor a 0 vuelvo a pedir el ingreso del valor
	Repetir
		Borrar Pantalla
		Escribir "Ingrese el tamaño de los vectores: " Sin Saltar
		leer n
	Mientras Que n<=0
	///invocacion del subproceso de carga de vector con el argumento "n" tamaño del vector
	cargarVectores(n)
FinAlgoritmo

///SubProceso de carga de vector, con el parametro "a" tamaño del vector
subproceso cargarVectores(a)
	definir vectorC como logico
	definir i, vectorA, vectorB como entero
	///defino los vectores y les asignno el tamaño pasado por parametro "a"
	dimension vectorA[a], vectorB[a], vectorC[a]
	///cargo de forma aleatoria el vector A y B con numeros entre 0 y 20
	para i = 0 hasta a-1
		vectorA[i]=Aleatorio(0,20)
		vectorB[i]=Aleatorio(0,20)
		///comparo ambos vectores para ver si hay alguno q sea igual,
		///en el vector cargo el valor logico correspondiente si es igual verdadero en caso contrario falso
		si vectorA[i]= vectorB[i] Entonces
			vectorC[i]= Verdadero
		sino 
			vectorC[i]=Falso
		FinSi
	FinPara
	///llamo al SubProceso que muestra informacion
	mostrarVector(vectorA, vectorC, vectorB, a)
FinSubProceso

///Subproces que muetra el vector A la relacion de = o <> (contenida en el vector C) y el vector B 
///y  recibe el tamaño de los vectores
SubProceso mostrarVector(a, c, b, n)
	definir i Como Entero
	escribir " A 		B"
	para i=0 Hasta n-1
		si c[i] = Verdadero Entonces
			Escribir a[i],"	=	",b[i]
		SiNo
			Escribir a[i],"	<>	",b[i]
		FinSi
	FinPara
FinSubProceso
	