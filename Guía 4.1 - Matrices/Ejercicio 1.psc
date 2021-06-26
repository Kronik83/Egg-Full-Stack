Algoritmo sin_titulo
	definir matriz Como Entero
	Dimension matriz[3,3]
	cargarMatriz(matriz)
	Borrar Pantalla
	mostraMatriz(matriz)
FinAlgoritmo

SubProceso cargarMatriz(mat)
	definir i,j Como Entero
	para i =0 hasta 2
		para j=0 hasta 2
			escribir "Cargar elemento de la fila:",i," y columna:",j Sin Saltar
			leer mat[i,j]
		FinPara
	FinPara
FinSubProceso

subproceso mostraMatriz(mat)
	definir i,j Como Entero
	escribir "   0  1  2"
	para i =0 hasta 2
		escribir i, " " sin saltar
		para j=0 hasta 2
			escribir "[",mat[i,j],"]" Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinSubProceso
	