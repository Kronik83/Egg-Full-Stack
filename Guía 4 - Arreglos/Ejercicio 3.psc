//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
//usuario. A continuación, se debe buscar un elemento dentro del arreglo (el número a
//buscar también debe ser ingresado por el usuario). El programa debe indicar la posición
//donde se encuentra el valor. En caso que el número se encuentre repetido dentro del
//arreglo se deben imprimir todas las posiciones donde se encuentra ese valor.
//Finalmente, en caso que el número a buscar no está adentro del arreglo se debe mostrar
//un mensaje
Algoritmo sin_titulo
	definir i, largo, num, vector Como Entero
	///cargo el tamaño del vector
	Escribir "Defina el largo del vector: "sin saltar
	leer largo
	Dimension vector[largo]
	///cargo el numero a buscar
	Escribir "Ingrese el numero a buscar: " Sin Saltar
	leer num
	///cargo los elementos del vector
	para i = 0 Hasta largo -1
		///muestro la posicion en la que se va a carga el elemento
		escribir "Ingrese el valor de la posision ",i," al vector: " sin saltar
		leer vector[i]
	FinPara
	
	///busco el elemento dentro del vector
	para i =0 hasta largo -1
		si num = vector[i] Entonces
			///muestro las posiciones donde se encontro
			Escribir "Posicion: ", i
		SiNo
			///si no se encuentra e i es igual al ultimo indice recien hay muestro el si no se encontro
			si (num <> vector[i]) y i=largo-1 Entonces
				escribir "No se encontro dentro del vector"
			FinSi
		FinSi
	FinPara
FinAlgoritmo
