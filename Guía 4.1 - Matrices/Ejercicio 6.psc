//Una matriz mágica es una matriz cuadrada (tiene igual número de filas que de columnas) 
//que tiene como propiedad especial que la suma de las filas, las columnas y las 
//diagonales es igual. Por ejemplo: 
//	2 7 6 
//	9 5 1 
//	4 3 8 
//En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir 
//un algoritmo que compruebe si una matriz de datos enteros es mágica o no, y en caso 
//de que sea mágica escribir la suma. Además, el programa deberá comprobar que los 
//números introducidos son correctos, es decir, están entre el 1 y el 9. El usuario ingresa el 
//tamaño de la matriz que no debe superar orden igual a 10
Algoritmo sin_titulo
	definir mat, n Como Entero
	n=3
	Dimension mat[n,n]
	cargar(mat,n)
	ver(mat,n)
	magic(mat,n)
FinAlgoritmo

SubProceso cargar(mat,n)
	definir i, j Como Entero
	escribir "--- Carga de la matriz 3x3 ---"
	escribir "Recuerde q los numeros tienen q estar entrs 1 y 9"
	para i=0 hasta n-1
		para j=0 hasta n-1
			Repetir
				escribir "Ingrese el elemento de la posicion [",i,",",j,"]"Sin Saltar
				leer mat[i,j]
			Mientras Que mat[i,j]>=10 o mat[i,j]<=0
		FinPara
	FinPara
FinSubProceso

SubProceso ver(mat,n)
	definir i,j Como Entero
	escribir "   0  1  2"
	para i=0 hasta n-1
		escribir i," "Sin Saltar
		para j=0 hasta n-1
			escribir "[",mat[i,j],"]"Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso magic(mat,n)
	definir i,j,aux Como entero
	Dimension aux[8]
	para i = 0 hasta 7
		aux[i]=0
	FinPara
	para i=0 hasta n-1
		para j=0 hasta n-1
			si i=0 y(j=0 o j=1 o j=2) Entonces
				aux[0]=aux[0]+mat[i,j]
			FinSi
			si i=1 y(j=0 o j=1 o j=2) Entonces
				aux[1]=aux[1]+mat[i,j]
			FinSi
			si i=2 y(j=0 o j=1 o j=2) Entonces
				aux[2]=aux[2]+mat[i,j]
			FinSi
			si j=0 y (i=0 o i=1 o i=2) Entonces
				aux[3]=mat[i,j]+aux[3]
			FinSi
			si j=1 y (i=0 o i=1 o i=2) Entonces
				aux[4]=mat[i,j]+aux[4]
			FinSi
			si j=2 y (i=0 o i=1 o i=2) Entonces
				aux[5]=mat[i,j]+aux[5]
			FinSi
			si i=j Entonces
				aux[6]=mat[i,j]+aux[6]
			FinSi
			si (i=0 y j=2) o (i=1 y j=1) o (i=2 y j=0) Entonces
				aux[7]=mat[i,j]+aux[7]
			FinSi
		FinPara
	FinPara
	j=0
	para i=0 hasta 8
		segun i
			0:
				si aux[i] =15
					j=j+1
				SiNo
					Escribir "La suma de su fila:",i," es = ",aux[i]
				FinSi
			1:
				si aux[i] =15
					j=j+1
				SiNo
					Escribir "La suma de su fila:",i," es = ",aux[i]
				FinSi
			2:
				si aux[i] =15
					j=j+1
				SiNo
					Escribir "La suma de su fila:",i," es = ",aux[i]
				FinSi
			3:
				si aux[i] =15
					j=j+1
				SiNo
					Escribir "La suma de su Columna:",i-3," es = ",aux[i]
				FinSi
			4:
				si aux[i] =15
					j=j+1
				SiNo
					Escribir "La suma de su Columna:",i-3," es = ",aux[i]
				FinSi
			5:
				si aux[i] =15
					j=j+1
				SiNo
					Escribir "La suma de su Columna:",i-3," es = ",aux[i]
				FinSi
			6:
				si aux[i] =15
					j=j+1
				SiNo
					Escribir "La suma de su diagonal [0,0] ; [1,1]; [2,2] es = ",aux[i]
				FinSi
			7:
				si aux[i] =15
					j=j+1
				SiNo
					Escribir "La suma de su diagonal [0,2] ; [1,1]; [2,0] es = ",aux[i]
				FinSi
			De Otro Modo:
				si j=8 Entonces
					escribir "La matriz es magica"
				SiNo
					escribir "Por estas razon no es magica"
				FinSi
		finSegun
	FinPara
FinSubProceso
