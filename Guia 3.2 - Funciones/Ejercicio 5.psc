//Realizar una función que reciba un numero ingresado por el usuario y averigüe si el
//numero es primo o no. Un número es primo cuando es divisible sólo por 1 y por sí
//mismo, por ejemplo: 2, 3, 5, 7, 11, 13, 17, etc. Nota: recordar el uso del MOD.

Algoritmo sin_titulo
	definir a, i Como Entero
	Definir contar Como Logico
	leer a 
	contar =primo(a)
	si contar = Verdadero Entonces
		Escribir "primo"
	SiNo
		escribir "No es primo"
	FinSi
FinAlgoritmo
funcion retorno <- primo(a)
	Definir  i, contar Como Entero
	definir retorno Como Logico
	contar = 0
	para i = 1 hasta a Hacer
		si a mod i = 0 y a mod a =0 y a mod 1= 0 entonces
			contar = contar + 1
		FinSi
	FinPara
	si contar = 2  entonces
		retorno = Verdadero
	SiNo
		retorno = Falso
	FinSi
FinFuncion
	