//Crear una funci�n que devuelva la diferencia que hay entre el valor m�s chico de un
//arreglo y su valor m�s grande.
Algoritmo sin_titulo
	Definir i, n, vec, mayor, menor Como Entero	
	///control para que el tama�o sea mayor q 0
	repetir
		Escribir "Ingrese el tama�o del vector "Sin Saltar
		leer n
	mientras que n<=0
	///defino el vector vec con el tama�o pasado por teclado
	Dimension vec[n]
	///cargo el vector con datos random
	para i = 0 Hasta n-1
		vec[i]=Aleatorio(1,10)
	FinPara
	/// lo imprimo por pantalla es una linea
	para i = 0 Hasta  n-1
		escribir vec[i] ," " sin saltar
		si i= n-1 Entonces
			Escribir ""
		FinSi
	FinPara
	mayor=0
	///determino el valor mayor del vector
	para i=0 Hasta n-1
		si mayor <= vec[i] Entonces
			mayor = vec[i]
			menor = mayor-1
		SiNo
			menor = vec[i]
		FinSi
	FinPara
	///determino el valor menor
	para i= 0 Hasta n-1
		si menor>= vec[i] y menor < mayor Entonces
			menor = vec[i]
		FinSi
	FinPara
	escribir "Menor =",menor," Mayor =",mayor," Mayor - Menor=",mayor-menor
FinAlgoritmo
