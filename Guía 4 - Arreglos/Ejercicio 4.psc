//Realizar un programa que rellene un vector de tama�o N, con valores ingresados por el
//usuario. A continuaci�n, se deber� crear una funci�n que reciba el vector y devuelva el
//valor m�s grande del vector.
Algoritmo sin_titulo
	definir i, mayor, vector, n Como Entero
	///defino el tama�o del vector
	Escribir "Ingrese el tama�o del vector: "sin saltar 
	leer n
	///defino el vector "vector" con el tama�o "n"
	dimension vector[n]
	///cargo los elmentos del vector
	para i=0 hasta n-1
		escribir "Ingrese el valor para la posicion ",i," :" Sin Saltar
		leer vector[i]
	FinPara
	///invoco la funcion NMayor con los argumentos vector y el tama�o
	Escribir "El numero mayor es: ", NMayor(vector, n)
FinAlgoritmo

funcion retorno <- NMayor(vector, n)
	definir retorno, i, aux Como Entero
	aux=0
	///determino la relacion de mayor dentro del vector
	para i = 0 hasta n-1
		si aux < vector[i]
			aux = vector[i]
		FinSi
	FinPara
	///devuelvo el valor resultante aux asignado a la variable retorno "retorno"
	retorno = aux
FinFuncion
	