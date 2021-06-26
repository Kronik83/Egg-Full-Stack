//Realizar un programa que cree una matriz de 5x15 y deberemos llenar la matriz de unos 
//y ceros. Llenando el marco o la delimitación externa de la matriz de unos y la parte interna 
//de ceros.
//Por ejemplo, nuestro matriz final debería verse así:
//	111111111111111 
//	100000000000001
//	100000000000001
//	100000000000001
//	111111111111111
Algoritmo sin_titulo
	definir mat, n, m Como Entero
	n=5 
	m=15
	Dimension mat[n,m]
	cargar(mat,n,m)
	ver(mat,n,m)
FinAlgoritmo

subproceso cargar(mat,n,m)
	definir i,j como entero
	para i = 0 hasta n-1
		para j=0 hasta m-1
			si i=0 o i=n-1 o j=0 o j=m-1 Entonces
				mat[i,j]=1
			SiNo
				mat[i,j]=0
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso ver(mat,n,m)
	definir i,j como entero
	para i = 0 hasta n-1
		para j=0 hasta m-1
			escribir  mat[i,j] Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinSubProceso
