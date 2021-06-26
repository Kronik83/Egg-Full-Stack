//Crear una matriz que contenga 3 columnas y la cantidad filas que decida el usuario. Las 
//dos primeras columnas contendrán valores enteros ingresados por el usuario y en la 3 
//columna se deberá almacenar el resultado de sumar el número de la primera y segunda 
//columna. Mostrar la matriz de la siguiente forma:
//	3 + 5 = 8
//	4 + 3 = 7
//	1 + 4 = 5 
Algoritmo sin_titulo
	definir mat,n,m como entero
	m=3
	repetir
		Escribir "Ingrese la cantidad de Columnas de la matriz"	
		leer n
	Mientras Que n<=0
	Dimension mat[n,m]
	cargar(mat,n,m)
	ver(mat,n,m)
FinAlgoritmo

SubProceso cargar(mat,n,m)
	definir i,j Como Entero
	para i=0 hasta n-1
		para j=0 hasta m-1
			si j=2 Entonces
				mat[i,j]=mat[i,j-2]+mat[i,j-1]
			SiNo
				//leer mat[i,j]
				mat[i,j]=azar(10)
			FinSi
		FinPara
	FinPara
FinSubProceso

subproceso ver(mat,n,m)
	definir i,j como entero
	para i=0 hasta n-1
		para j=0 hasta m-1
			si j=0 Entonces
				escribir mat[i,j], " + "Sin Saltar
			FinSi
			si j=1 entonces 
				escribir mat[i,j] ," = "Sin Saltar
			FinSi
			si j=2 Entonces
				escribir mat[i,j]
			FinSi
		FinPara
	FinPara
FinSubProceso
	