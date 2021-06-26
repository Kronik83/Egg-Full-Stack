//Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) 
//realizar un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos 
//otro subprograma que calcule y muestre la suma de los elementos de la matriz. Mostrar 
//la matriz y los resultados por pantalla. 
Algoritmo sin_titulo
	definir mat, m,n Como Entero
	escribir "Ingrese el tamaño de la matriz"
	repetir
		Escribir "Filas:" Sin Saltar
		leer n
	mientras que n<=0
	repetir
		escribir "Columnas:"Sin Saltar
		leer m
	mientras que m<=0
	esperar 1 segundo
	Dimension mat[n,m]
	cargar(mat,n,m)
	esperar 2 Segundos
	Borrar Pantalla
	ver(mat,n,m)
	escribir "La suma de los elementos de la matriz es: ",sumar(mat,n,m)
	
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
	para i=0 hasta n-1
		para j=0 hasta m-1
			escribir "[",mat[i,j],"]"sin saltar
		FinPara
		Escribir ""
	FinPara
FinSubProceso

funcion ret=sumar(mat,n,m)
	definir ret, i, j, aux Como Entero
	aux=0
	para i= 0 hasta n-1
		para j=0 hasta m-1
			aux=aux+mat[i,j]
		FinPara
	FinPara
	ret = aux
FinFuncion