Algoritmo sin_titulo
	definir num como entero
	Escribir "ingrese un numero"
	leer num
	num = recursivo(num)
	Escribir num
FinAlgoritmo


funcion resultado <- recursivo(a)
	definir aux,resultado Como Entero
	aux = a-1
	SI a=1 Entonces
		resultado =a
	SiNo
		resultado = a + recursivo(aux)
	FinSi
FinFuncion
	