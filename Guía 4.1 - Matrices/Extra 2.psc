//Crear una matriz de orden n * m (donde n y m son valores ingresados por el usuario), 
//llenarla con números aleatorios entre 1 y 100 y mostrar su traspuesta.
/// matriz original
///    0  1  2
///0 [1][2][3]
///1 [4][5][6]
///2 [7][8][9]

/// matriz traspuesta
///    0  1  2
///0 [1][4][7]
///1 [2][5][8]
///2 [3][6][9]

Algoritmo sin_titulo
	definir mat, n, m Como Entero
	Escribir "Ingrese el tamaño de la matriz"
	Repetir
		Escribir "Filas: "Sin Saltar
		leer n
		m=n
	Mientras Que n<=0

	Dimension mat[n,m]
	cargar(mat,n,m)
	Borrar Pantalla
	Escribir "Matriz Original"
	ver(mat,n,m)
	escribir "Mastriz Traspuesta"
	traspuesta(mat,n,m)
FinAlgoritmo

SubProceso cargar(mat,n,m)
	definir i,j Como Entero
	para i=0 hasta n-1
		para j=0 hasta m-1
			mat[i,j]=Aleatorio(1,100)
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

SubProceso traspuesta(mat,n,m)
	definir matT,i,j Como Entero
	dimension matT[n,m]
	para i =0 Hasta m-1
		para j=0 hasta n-1
			matT[i,j]=mat[j,i]
		FinPara
	FinPara
	ver(matT,n,m)
FinSubProceso
	