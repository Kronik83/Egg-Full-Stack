//Rellenar una matriz, de 3 x 3, con una palabra de 9 de longitud, pedida por el usuario,
//encontrando la manera de que la frase se muestre de manera continua en la matriz. 

Algoritmo sin_titulo
	definir n,m Como Entero
	definir mat, palabra Como Caracter
	n=3
	Dimension mat[n,n]
	Repetir
		Escribir "Ingrese una palabra de 9 letras:" Sin Saltar
		leer palabra
	Mientras Que longitud(palabra)<>9
	cargar(mat,n,palabra)
	ver(mat,n)
FinAlgoritmo

SubProceso cargar(mat,n,p)
	definir i,j, aumento Como Entero	
	aumento =0
	para i=0 hasta n-1
		para j=0 hasta n-1
			mat[i,j] = subcadena(p,j+aumento,j+aumento)
		FinPara
		aumento =aumento +n
	FinPara
FinSubProceso

SubProceso ver(mat,n)
	definir i,j Como Entero	
	para i=0 hasta n-1
		para j=0 hasta n-1
			escribir "[",mat[i,j],"]"Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinSubProceso
	