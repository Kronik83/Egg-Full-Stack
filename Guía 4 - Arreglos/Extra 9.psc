Algoritmo sin_titulo
	Definir i, vec, n, suma Como Entero
	n=4
	Dimension vec[n]
	para i= 0 hasta n-1
		vec[i]=Aleatorio(1,10)
	FinPara
	mostrarVector(vec,n)
	escribir multiRecursiva(vec,n)
FinAlgoritmo

funcion ret<- multiRecursiva(a,n)
	definir ret Como Entero
	si n=0 Entonces
		ret = 1
	SiNo
		ret = a[n-1] * multiRecursiva(a,n-1)
	FinSi
FinFuncion

subproceso mostrarVector(a,n)
	definir i Como Entero
	para i =0 hasta n-1
		Escribir a[i]," " Sin Saltar
		si i=n-1 Entonces
			Escribir ""
		FinSi
	FinPara
FinSubProceso