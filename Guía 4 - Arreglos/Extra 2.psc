//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
//usuario y muestre por pantalla el promedio de la suma de todos los valores ingresados. 
Algoritmo sin_titulo
	definir n Como Entero
	///control para el ingreso de tamaño del vector, mietras sea menor o igual a 0 seguira pidiendo el valor hasa ser correcto
	Repetir
		escribir "Ingrese el tamaño del vector"
		leer n
	Mientras Que n<=0
	///llamado al SubProceso cargarVector y envia el argumento "n" tamaño del vector
	cargarVector(n)
FinAlgoritmo

SubProceso cargarVector(n)
	definir i, vec como entero
	///defino el vector asignandole el tamaño adquirido por parametro "n"
	Dimension vec[n]
	///hago la carga del vector de forma manual por teclado
	para i = 0 hasta n-1
		escribir  i+1,"° valor a ingresar :" sin saltar		///muetra el numero de elemento a cargar
		leer vec[i]
	FinPara
	///llamado del SubProceso mostrarVector que envia como parametro el  nombre del vecto y el tamaño
	mostrarVector(vec, n)
	escribir "Promedio del vector = ",promediar(vec, n)	///En el escribir, invoco la funcion promediar q envia a la funcion 
													///los argumento vec "nombre del vector" y n "tamaño" 
													/// tambien es igual a la cantidad de elementos ingresados
FinSubProceso

///SubProceso  que muestra los vectores con los parametros recividos a"nombre del vector" y b"tamaño del vector"
SubProceso mostrarVector(a, n)
	definir i como entero
	Escribir "Vector"
	para i = 0 hasta n-1
		escribir a[i], " " Sin Saltar
		si i=n-1 Entonces
			Escribir ""
		FinSi
	FinPara
FinSubProceso

///funcion  promediar que recibe los parametros a"nombre del vector" y b "tamaño" o cantidad de elementos
 funcion ret <- promediar(a,b)
	definir i, aux, ret Como Entero
	///por medio de una variable auxiliar acumulo la suma de los elementos
	aux = 0
	para i = 0 hasta b-1
		aux = aux+a[i]
	FinPara
	///retorno una variabl ret con el valor del promedio
	ret = aux/b
FinFuncion
	