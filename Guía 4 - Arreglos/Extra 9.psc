Algoritmo sin_titulo
	Definir i, vec, n, suma Como Entero
	n=4
	///defino el vector con tamaño pasado por variable
	Dimension vec[n]
	///cargo aleatoriamente el vector
	para i= 0 hasta n-1
		vec[i]=Aleatorio(1,10)
	FinPara
	///muestro el vector original llamando al SubProceso 
	mostrarVector(vec,n)
	///muestro por pantalla la suma obtenida por la invacion de la funcion multiRecursiva
	escribir multiRecursiva(vec,n)
FinAlgoritmo

funcion ret<- multiRecursiva(a,n)
	definir ret Como Entero
	///establesco el limite para cortar la reiteracion de la funcion cuando n =0 y 
	///devuelvo resultado ret=1 (no es cero porq sino anulo todos los ortos calculos)
	si n=0 Entonces
		ret = 1
	SiNo
		///hago la suma de los elementos del vector mediante el llamado de la funcion 
		///hasta q n=0, y devuelvo el resultado del calculo en la variable de retorno "ret"
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