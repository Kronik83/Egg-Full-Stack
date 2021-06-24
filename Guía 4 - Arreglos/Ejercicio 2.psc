//Realizar un programa que lea 10 números reales por teclado, los almacene en un arreglo
//y muestre por pantalla la suma, resta y multiplicación de todos los números ingresados
//al arreglo.
Algoritmo sin_titulo
	definir i, suma, resta, multi, vector Como Entero
	definir signo Como Caracter
	///defino el vector "vector" con tamaño "10"
	Dimension vector[10]
	Escribir "Ingrese los datos al vector"
	///Ingreso los elementos
	para i = 0 Hasta 9
		leer vector[i]
	FinPara
	///bucle q me permite recorrer los indices del vector y hacer las siguientes acciones.
	para i=0 hasta 9
		///como los contadores no estan inicializados, si i =0 entonces inicializo los contados con el primer 
		///elemento del vector
		si i = 0 Entonces
			suma = vector[i]
			resta= vector[i]
			multi=vector[i]
		SiNo
			///con los elemento ya inicializados en la primer iteracion ahora realizo las acciones desde la 2 iteracion (i=1)
			/// hasta la ultima iteracion i=9
			suma = suma + vector[i]
			resta= resta - vector[i]
			multi = multi * vector[i]
		FinSi
	FinPara
	escribir "Suma: " Sin Saltar
	signo="+"
	///llamo un subproceso que solo imprime en pantalla cada elemento del vector, pasando los datos nombre del vector "vector" 
	///y el signo de la operacion "signo"
	mostrarVector(vector,signo)
	///muestro el resultado
	escribir suma
	
	escribir "Resta: " Sin Saltar
	signo="-"
	///idem suma
	mostrarVector(vector,signo)
	///idem suma
	escribir resta
	
	Escribir "Multiplicacion: " Sin Saltar
	signo="*"
	///idem suma
	mostrarVector(vector,signo)
	///idem suma
	escribir multi
	
FinAlgoritmo

subproceso mostrarVector(a,b)
	Definir i Como Entero
	///recivo los parametros de "a" copia de "vector" y "b" copia de "signo"
	///imprimo por pantalla
	para i= 0 hasta 9
		si i = 9 Entonces
			///al final de la linea muestro un "=" cuando i=9
			escribir a[i],"=" 
		SiNo
			///muestro los elementos del vector "a[i]" y el signo con "b"
			Escribir a[i], " ",b," " Sin Saltar
		FinSi
	FinPara
FinSubProceso

