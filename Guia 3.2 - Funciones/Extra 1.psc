//Realizar una función que calcule y retorne la suma de todos los divisores del número n
//distintos de n. El valor de n debe ser ingresado por el usuario.
Algoritmo sin_titulo
	definir num Como Entero
	escribir "Ingrese un numero"
	leer num
	num = todoNumDivisor(num)
	escribir num
FinAlgoritmo

funcion retorno <- todoNumDivisor(a)
	definir i,j, retorno Como Entero
	j = 0
	para i=1 hasta a Hacer
		si a mod i = 0 Entonces
				j=j+i
			FinSi
	FinPara
	retorno = j
FinFuncion
