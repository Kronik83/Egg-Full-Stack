//Realizar un programa que pida una frase y el programa deber� mostrar la frase con un
//espacio entre cada letra. La frase se mostrara as�: H o l a. Nota: recordar el
//funcionamiento de la funci�n Subcadena().
Algoritmo sin_titulo
	definir frase Como Caracter
	definir contar, i Como Real
	leer frase
	contar = longitud(frase)
	para i =0 hasta contar Hacer
		escribir sin saltar subcadena(frase,i,i)
		si i=contar Entonces
			escribir "";
		sino 
			escribir sin saltar " "
		FinSi
	FinPara
FinAlgoritmo
