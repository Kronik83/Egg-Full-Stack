//Realizar una función que valide si un numero es impar o no. Si es impar la función debe
//devolver un verdadero, si no es impar debe devolver falso. Nota: la función no debe
//tener mensajes que digan si es par o no, eso debe pasar en el Algoritmo.

Algoritmo sin_titulo
	definir num Como Entero
	Definir impar Como Logico
	Escribir "Ingrese un Numero"
	leer num
	impar = imparONo(num)
	si impar = Verdadero entonces
		escribir "Es Impar"
	SiNo
		Escribir "es Par"
	FinSi
FinAlgoritmo

funcion retorno <- imparONo(a)
	definir retorno Como Logico
	si a mod 2 = 1 Entonces
		retorno=Verdadero
	SiNo
		retorno= Falso
	FinSi
FinFuncion
