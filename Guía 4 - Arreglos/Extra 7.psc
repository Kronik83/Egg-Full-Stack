Algoritmo sin_titulo
	definir n, vec Como Entero
	Repetir
		Escribir "Ingrese el tamaño del vector: " Sin Saltar
		leer n
	mientras que n <0
	cargarVec(n)
FinAlgoritmo

SubProceso cargarVec(n)
	definir i, vec Como Entero
	dimension vec[n]
	para i=0 Hasta n-1
		vec[i]=Aleatorio(0,azar(100))
	FinPara
	Escribir "Vector Original:"
	mostrarVector(vec,n)
	ordenarVecMaMe(vec,n)
	ordenarVecMeMa(vec,n)
FinSubProceso

SubProceso 	ordenarVecMeMa(vec, n)
	Definir i, j, aux Como Entero
	para i=0 hasta n-1
		para j=0 hasta n-2
			si vec[j]<vec[j+1] Entonces
				aux=vec[j]
				vec[j]=vec[j+1]
				vec[j+1]=aux
			FinSi
		FinPara
	FinPara
	Escribir "Vector Ordenado de Mayor a Menor:"
	mostrarVector(vec,n)
FinSubProceso

SubProceso 	ordenarVecMaMe(vec, n)
	Definir i, j, aux Como Entero
	para i=0 hasta n-1
		para j=0 hasta n-2
			si vec[j]>vec[j+1] Entonces
				aux=vec[j]
				vec[j]=vec[j+1]
				vec[j+1]=aux
			FinSi
		FinPara
	FinPara
	Escribir "Vector Ordenado de Menor a Mayor:"
	mostrarVector(vec,n)
FinSubProceso

SubProceso mostrarVector(a Por Referencia,n Por Valor)
	definir i Como Entero
	para i=0 hasta n-1
		escribir a[i]," " sin saltar
		si i =n-1 Entonces
			escribir ""
		FinSi
	FinPara
FinSubProceso
	