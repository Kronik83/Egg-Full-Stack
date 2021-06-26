//realizar un programa que rellene de números aleatorios una matriz a través de un 
//subprograma y generar otro subprograma que muestre por pantalla la matriz final.
Algoritmo sin_titulo
	definir mat, n,m Como Entero
	escribir "ingrese el tamaño"
	Repetir
		escribir "Filas: "sin saltar
		leer n
	Mientras Que n<=0
	Repetir
		Escribir "Columnas: "sin saltar
		leer m
	Mientras Que m<=0
	Dimension mat[n,m]
	cargar(mat,n,m)
	ver(mat,n,m)
FinAlgoritmo

SubProceso cargar(mat,n,m)
	definir i,j Como Entero
	para i=0 hasta n-1
		para j=0 hasta m-1
			mat[i,j]=azar(10)
		FinPara
	FinPara
FinSubProceso

SubProceso ver(mat,n,m)
	definir i,j Como Entero
	///Estructura q enumera las columnas
	escribir "  "Sin Saltar
	para i =0 hasta m-1
		escribir " ",i," "Sin Saltar
	FinPara
	Escribir ""
	///bucle de carga
	para  i=0 hasta n-1
		escribir i," "Sin Saltar ///enumero las filas
		Para j=0 hasta m-1
			escribir "[",mat[i,j],"]"Sin Saltar
		FinPara
		Escribir ""
	FinPara
	
FinSubProceso
