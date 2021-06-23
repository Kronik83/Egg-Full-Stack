//Crear una función que devuelva la diferencia que hay entre el valor más chico de un
//arreglo y su valor más grande.
Algoritmo sin_titulo
	Definir i, n, vec, mayor, menor Como Entero	
	Escribir "Ingrese el tamaño del vector "Sin Saltar
	leer n
	Dimension vec[n]
	para i = 0 Hasta n-1
		vec[i]=Aleatorio(1,10)
	FinPara
	para i = 0 Hasta  n-1
		escribir vec[i] ," " sin saltar
		si i= n-1 Entonces
			Escribir ""
		FinSi
	FinPara
	mayor=0
	para i=0 Hasta n-1
		si mayor <= vec[i] Entonces
			mayor = vec[i]
			menor = mayor-1
		SiNo
			menor = vec[i]
		FinSi
	FinPara
	para i= 0 Hasta n-1
		si menor>= vec[i] y menor < mayor Entonces
			menor = vec[i]
		FinSi
	FinPara
	escribir "Menor =",menor," Mayor =",mayor," Mayor - Menor=",mayor-menor
FinAlgoritmo
