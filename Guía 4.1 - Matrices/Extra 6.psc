//. Realizar un programa que permita visualizar el resultado del producto de una matriz de
//enteros de 3x3 por un vector de 3 elementos. Los valores de la matriz y el vector pueden
//inicializarse evitando así el ingreso de datos por teclado. 
Algoritmo sin_titulo
	definir vec, mat, f,c,mc Como Entero
	f=3
	c=1
	mc= f
	Dimension mat[f,mc] , vec[f,c]
	
	cargarM(mat, f, mc)
	cargarV(vec,f,c)
	
	verM(mat,f,mc)
	Escribir ""
	verV(vec,f,c)
	calcular(mat,f,mc,vec,f,c)
FinAlgoritmo

SubProceso calcular(mat,f,mc,vec,f,c)
	Definir i,j,aux Como Entero
	Dimension  aux[f,c]
	para i=0 hasta f-1
		para j= 0 hasta c-1
			aux[i,j]=0
		FinPara
	FinPara
	para i= 0 hasta f-1
		para j=0 hasta f-1
			si j=0 entonces
				aux[i,0]=aux[i,0]+ mat[i,0]*vec[i,0]
			SiNo
				si j=1 Entonces
					aux[i,0]= aux[i,0] + mat[i,1]*vec[i,0]
				SiNo
					aux[i,0]=aux[i,0] + mat[i,2] *vec[i,0]
				FinSi
			FinSi
		FinPara
	FinPara
	Escribir ""
	verV(aux,f,c)
FinSubProceso


subproceso verM(mat,f,mc)
	Definir i,j Como Entero
	para i=0 hasta f-1
		para j=0 hasta mc-1
			escribir "[",mat[i,j],"]"Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinSubProceso
subproceso verV(vec,f,c)
	Definir i, j Como Entero
	para i=0 hasta f-1
		para j=0 hasta c-1
			escribir "[",vec[i,j],"]"
		FinPara
	FinPara
FinSubProceso

subproceso cargarM(mat,f,mc)
	Definir i,j Como Entero
	para i=0 hasta f-1
		para j=0 hasta mc-1
			mat[i,j]=i+j+1
		FinPara
	FinPara
FinSubProceso
subproceso cargarV(vec,f,c)
	Definir i, j Como Entero
	para i=0 hasta f-1
		para j=0 hasta c-1
			vec[i,j]=i+1
		FinPara
	FinPara
FinSubProceso
	