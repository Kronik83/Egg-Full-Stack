//Realizar un programa que calcule la multiplicación de dos matrices de enteros de 3x3. 
//Inicialice las matrices para evitar el ingreso de datos por teclado. 
Algoritmo sin_titulo
	definir A,B,n,i,j Como Entero
	n=3
	Dimension A[n,n],B[n,n]
	cargar(A,n)
	Escribir "Vector A"
	ver(A,n)
	cargar(B,n)
	Escribir "Vector B"
	ver(B,n)
	Escribir "Vector Resultado"
	multi(A,B,n)
FinAlgoritmo

subproceso cargar(M,n)
	definir i,j Como Entero
	para i=0 hasta n-1
		para j=0 hasta n-1
			M[i,j]=azar(10)
		FinPara
	FinPara
FinSubProceso

SubProceso ver(mat,n)
	definir m,i,j Como Entero
	m=n
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


subproceso multi(A,B,n)
	definir i,j,C Como Entero
	Dimension C[n,n]
	para i=0 hasta n-1
		para j=0 hasta n-1
			C[i,j]=A[i,j]*B[i,j]
		FinPara
	FinPara
	ver(C,n)
FinSubProceso
	