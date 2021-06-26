//Rellenar en un subproceso una matriz cuadrada con números aleatorios salvo en la 
//diagonal principal, la cual debe rellenarse con ceros. Una vez llena la matriz debe 
//generar otro subproceso para imprimir la matriz.
Algoritmo sin_titulo
	definir m,n,mat Como Entero
	Repetir
		Escribir "Ingrese el tamaño de la matriz cuadrada"
		leer m
	Mientras Que m<=0
	n=m
	Dimension mat[m,n]
	cargar(mat,m,n)
	ver(mat,m,n)
FinAlgoritmo

SubProceso cargar(mat,m,n)
	definir i,j Como Entero
	para i=0 hasta m-1
		para j=0 hasta n-1
			mat[i,j]=0
		FinPara
	FinPara
FinSubProceso

subproceso ver(mat,m,n)
	definir i,j Como Entero
	para i=0 hasta m-1
		para j=0 hasta n-1
			escribir "[",mat[i,j],"]"Sin Saltar
		FinPara
		escribir""
	FinPara
FinsubProceso

