//Realizar un programa que rellene un vector de tama�o N, con valores ingresados por el
//usuario. A continuaci�n, se deber� crear una funci�n que reciba el vector y devuelva el
//valor m�s grande del vector.
Algoritmo sin_titulo
	definir i, mayor, vector, n Como Entero
	Escribir "Ingrese el tama�o del vector: "sin saltar 
	leer n
	dimension vector[n]
	para i=0 hasta n-1
		escribir "Ingrese el valor para la posicion ",i," :" Sin Saltar
		leer vector[i]
	FinPara
	mayor = NMayor(vector, n)
	Escribir "El numero mayor es: ", mayor 
FinAlgoritmo

funcion retorno <- NMayor(vector, n)
	definir retorno, i, aux Como Entero
	aux=0
	para i = 0 hasta n-1
		si aux < vector[i]
			aux = vector[i]
		FinSi
	FinPara
	retorno = aux
FinFuncion
	