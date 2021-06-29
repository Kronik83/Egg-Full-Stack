//Una matriz mágica es una matriz cuadrada (tiene igual número de filas que de columnas)
//que tiene como propiedad especial que la suma de las filas, las columnas y las
//diagonales es igual.
//2 7 6   otros ejemplo magicos		2 9 4  	6 7 2	4 9 2
//9 5 1   						7 5 3  	1 5 9	3 5 7
//4 3 8   						6 1 8  	8 3 4 	8 1 6


Algoritmo sin_titulo
	definir mat, n, Filas, Columnas, Secundaria, Principal Como Entero
	repetir
		Escribir "Ingrese en el tamaño de la matriz cuadrada, la cual no puede ser mayor a 9"
		leer n
	Mientras Que n>3 o n<0
	
	Dimension mat[n,n]
	
	cargar(mat,n)
	ver(mat,n)
	Filas = sumaFilas(mat,n)
	Columnas = sumaColumnas(mat,n)
	Principal = sumaDiagonalPri(mat,n)
	Secundaria = sumaDiagonalSec(mat,n)
	verificar(Filas, Columnas, Principal, Secundaria)
FinAlgoritmo

subproceso verificar(f,c,p,s)
	si f=c y c=p y p=s Entonces
		Escribir "La Matriz es Magica"
	SiNo
		Escribir "La Matriz no es Logica"
	FinSi
FinSubProceso

Funcion retorno = sumaDiagonalPri(mat,n)
	definir i,j, aux, retorno Como Entero

	aux=0
	para i=0 hasta n-1
		aux=aux+mat[i,i]		///la diagonal pprincipal esta comprendida por i=j, que es lo mismo q matriz[i,i] los elemento de la matriz de indices =
	FinPara
	retorno = aux
FinFuncion

Funcion retorno = sumaDiagonalSec(mat,n)
	definir i,j,aux, retorno Como Entero
	aux=0
	para i=0 hasta n-1
		j=i+1				///fila + 1
		aux=aux+mat[i,n-j]	///la diagonal secundaria es igual a i ,n-j donde n-j es el desplazamiento de el ultimo elemento - a la fila + 1
	FinPara
	retorno= aux
FinFuncion

Funcion retorno = sumaColumnas(mat,n)
	definir i,j, aux, vec, matAux, retorno Como Entero
	Dimension vec[n], matAux[n,n]
	
	aux = 0
	para i = 0 hasta n-1
		vec[i]=0
		para j=0 hasta n-1
			matAux[i,j]=mat[j,i]		///traspuesta las filas pasan a ser columnas y las columnas filas
			si i=aux entonces
				vec[i]=vec[i]+matAux[i,j]			///sumo las filas que al estar traspuestas antes eran columnas
			FinSi
//			si j=n-1 Entonces
//				Escribir "La suma de la columna ",aux, " = ",vec[i]	
//			finsi
		FinPara
		aux=aux+1
	FinPara
	j =0
	para i = 0 hasta n-2
		si vec[i]=vec[i+1] entonces	///verifico si las suma de cada columna es = entre si, si es igual, sumo 1
			j= j + 1
		FinSi
	FinPara

	si j=n-1 Entonces
		retorno = vec[0]				///si cada comparacion dio 1 entonces es verdadero y retorno el valor de cualquiera de las sumas de sus columnas
	SiNo
		retorno =0
	FinSi
FinFuncion

Funcion retorno = sumaFilas(mat,n)
	definir i,j, aux, vec, retorno Como Entero
	Dimension vec[n]
	
	aux = 0
	para i = 0 hasta n-1
		vec[i]=0							///inicializo el vec en 0
		para j=0 hasta n-1
			si i=aux entonces			///trabo la  condicion de suma en la fila cuando i = aux
				vec[i]=vec[i]+mat[i,j]
			FinSi
//			si j=n-1 Entonces
//				Escribir "La suma de la fila ",aux, " = ",vec[i]	
//			finsi
		FinPara
		aux=aux+1
	FinPara
	j =0
	para i = 0 hasta n-2
		si vec[i]=vec[i+1] entonces		///verifico si las suma de cada fila es = entre si, si es igual, sumo 1 acumulando las veces q se cumplio la condicion
			j= j + 1
		FinSi
	FinPara

	si j=n-1 Entonces					///si cada comparacion dio 1 entonces es verdadero y retorno el valor de cualquiera de las sumas de sus filas
		retorno = vec[0]
	SiNo
		retorno = 0
	FinSi
FinFuncion

///subproceso de visualizacion de la Matriz
subproceso ver(mat,n)
	definir i,j Como Entero
	para i=0  hasta n-1
		para j=0 hasta n-1
			Escribir "[",mat[i,j],"]" Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinSubProceso

///subproceso de carga de la Matriz
SubProceso cargar(mat,n)
	definir i,j Como Entero
	para i=0 hasta n-1
		para j=0 hasta n-1
			repetir
				Escribir "Ingrese el valor para la posicion: [",i,",",j,"]" Sin Saltar
				leer mat[i,j]
			Mientras Que mat[i,j]>9 o mat[i,j]<0
		FinPara
	FinPara
FinSubProceso
	