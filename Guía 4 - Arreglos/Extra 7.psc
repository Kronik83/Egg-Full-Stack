//Crear un programa que ordene un vector lleno de números enteros aleatorios, de menor
//a mayor. Nota: investigar el ordenamiento burbuja en el siguiente link: Ordenamiento Burbuja
Algoritmo sin_titulo
	Definir i, n, vector Como Entero
	///control para que el tamaño no seameno o igual a 0
	repetir
		Escribir "Ingrese el tamaño del vector: " Sin Saltar
		leer n
	Mientras que n<=0
	///definicion del vector con el tamaño ingresado por teclado "n"
	Dimension vector[n]
	///carga de forma aleatoria del vector con valers entre 0 y 100
	para i=0 hasta n-1
		vector[i]= Aleatorio(0,100)
	FinPara
	///muestra de los vectores original, 
	Escribir "Elementos Cargados"
	mostrarVector(vector, n)
	Escribir "Elementos Ordenados de Menor a Mayor" 
	///llamado a los subprocesos vectorOrdMeMa de menor a mayor  
	vectorOrdMeMa(vector, n)
	Escribir "Elementos Ordenados de Mayor a Menor" 
	///llamado del subproceso vectorOrdMaMe de mayor a menor
	vectorOrdMaMe(vector, n)
FinAlgoritmo

SubProceso vectorOrdMeMa(a,n)
	definir i, j, temp Como Entero
	///utilizo 1° bucles para que con el primero realice una iteracion para todos los valores
	para i=0 hasta n-1
		///utilizo el 2° bucle para realizar el orden de indice 0 al n-1
		para j=0 hasta n-2
			///comparo el elemento de indice (0) cuando j = 0 con el siguiente elemento de indice (0+1) si A[0]>a[0+1]
			/// hago pasaje de indices (es similar al pasaje de variables)el valor del indice a[0] lo paso a una variable 
			///auxiliar el valor de a[0+1] lo asigno al a[0]
			/// el valor de la variable auxiliar la paso al a[0+1]
			/// el bucle va desde 0 hasta n-2 porq como trabajo con el siguiente numero del indice y lo dejo con n-1 el siguiente 
			///seria n y me voy fuera dek rango de valores de (0 a n-1)
			/// esto se repite para todo los indices de (0 a n-2) acomodando en cada paso los menores y mayores
			si a[j]>a[j+1] Entonces
				temp = a[j]
				a[j]=a[j+1]
				a[j+1] = temp
			FinSi
		FinPara
	FinPara
	/// llamado al SubProceso que muestra los vectores
	mostrarVector(a,n)
FinSubProceso

SubProceso vectorOrdMaMe(a,n)
	///similar al anterior solo q se parte desde 1 hasta n-1, porque se trabaja con el elemento de j=1 y su anterior, 
	///y si el inicio es 0 me voy fuera de rango
	definir i, j, temp Como Entero
	para i=0 hasta n-1
		para j=1 hasta n-1
			si a[j]>a[j-1] Entonces
				temp = a[j]
				a[j]=a[j-1]
				a[j-1] = temp
			FinSi
		FinPara
	FinPara
	/// llamado al SubProceso que muestra los vectores
	mostrarVector(a,n)
FinSubProceso

///proceso q muestra los vectores
SubProceso mostrarVector(a,n)
	definir i Como Entero
	para i =0 hasta n-1
		Escribir a[i]," " Sin Saltar
		si i=n-1
			Escribir ""
		FinSi
	FinPara
FinSubProceso
