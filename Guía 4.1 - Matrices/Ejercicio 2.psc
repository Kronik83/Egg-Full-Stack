// Escribir un programa que realice la búsqueda lineal de un número entero ingresado por 
//el usuario en una matriz de 5x5, llena de números aleatorios y devuelva por pantalla las 
//coordenadas donde se encuentra el valor, es decir en que fila y columna se encuentra. 
//En caso de no encontrar el valor dentro de la matriz se debe mostrar un mensaje
Algoritmo sin_titulo
	definir mat, a Como Entero
	Dimension mat[5,5]
	cargarMat(mat)
	esperar 3 Segundos
	Borrar Pantalla
	mostrarMat(mat)
	esperar 2 Segundos
	buscarElemento(mat)
FinAlgoritmo
SubProceso cargarMat(mat)
	definir i,j, nume Como Entero
	para i = 0 hasta 4
		para j=0 hasta 4
			mat[i,j]=azar(10)
			nume=mat[i,j]
			escribir "Cargando el elemento en la fila:",i," y columna:",j ," = ",nume
		FinPara
	FinPara
FinSubProceso

subproceso mostrarMat(mat)
	definir i,j,a Como Entero
	escribir "   0  1  2  3  4 " 
	para i = 0 hasta 4
			escribir i," " sin saltar
			para j=0 hasta 4
				escribir "[",mat[i,j],"]" Sin Saltar
			FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso buscarElemento(mat)
	definir m, i, j, nume, contador Como Entero
	m=0
	contador =0
	escribir "Ingrese el numero a buscar: "Sin Saltar
	leer nume
	Repetir
		para i=0 hasta 4
			para j=0 hasta 4
				si mat[i,j]=nume entonces
					si m=0 Entonces
						contador=contador+1
					SiNo
						si contador =1 Entonces
							escribir "El numero ",nume," se encontro en la posicion [",i,",",j,"]"
						SiNo
							escribir "El numero ",nume," se encontro en las posiciones [",i,",",j,"]"								
						FinSi
					FinSi				
				FinSi
			FinPara
		FinPara
		m=m+1
	Mientras Que m<>2
	si contador=0 Entonces
		Escribir "No se encontro el numero ", nume, " en la matriz"
	finSi
	
FinSubProceso


