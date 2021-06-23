//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
//usuario y muestre por pantalla el promedio de la suma de todos los valores ingresados. 

Algoritmo sin_titulo
	definir n Como Entero
	Repetir
		escribir "Ingrese el tamaño del vector"
		leer n
	Mientras Que n<=0
	cargarVector(n)
FinAlgoritmo

SubProceso cargarVector(n)
	definir i, vec como entero
	Dimension vec[n]
	para i = 0 hasta n-1
		escribir  i+1,"° valor a ingresar :" sin saltar
		leer vec[i]
	FinPara
	mostrarVector(vec, n)
	escribir "Promedio del vector = ",promediar(vec, n)
FinSubProceso

SubProceso mostrarVector(a, n)
	definir i como entero
	Escribir "Vector"
	para i = 0 hasta n-1
		escribir a[i], " " Sin Saltar
		si i=n-1 Entonces
			Escribir ""
		FinSi
	FinPara
FinSubProceso

funcion ret <- promediar(a,b)
	definir i, aux, ret Como Entero
	aux = 0
	para i = 0 hasta b-1
		aux = aux +a[i]
	FinPara
	ret = aux/b
FinFuncion
	