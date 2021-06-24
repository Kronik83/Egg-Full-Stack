///Este codigo es mas complejo que el que dice sencillo, ya que este esta dividido en SubProcesos para desglosar el problema  

//Crear un vector que contenga 100 notas de 100 supuestos estudiantes, con valores entre
//0 y 20 generadas aleatoriamente mediante el uso de la función azar() o aleatorio() de
//PseInt. Luego, de acuerdo a las notas contenidas, el programa debe indicar cuántos
//estudiantes son:
//	a) Deficientes 0-5
//	b) Regulares 6-10
//	c) Buenos 11-15
//	d) Excelentes 16-20
Algoritmo sin_titulo
	definir i, vector, n Como Entero
	n = 100
	///defino el vector con el tamaño adquirido por variable
	Dimension vector[n]
	///cargo el vector con datos aleatorios entre 0 y20
	para i =0 hasta n-1
		vector[i]=Aleatorio(0,20)
	FinPara
	Escribir "Vector cargado"
	///muestro el vectro por medio del subproceso que me toma los argumentos "vector" nombre del vector y "n" tamaño
	mostrarVector(vector, n)
	Escribir "Indices obtenidos"
	///SubProceso que calcula los indices de acuerdo al valor de cada elemento
	indices(vector, n)
FinAlgoritmo

SubProceso indices(a, b)
	definir i, def, reg, bue, exc Como Entero
	def= 0
	reg= 0
	bue=0
	exc=0
	para i= 0 hasta b-1
		///analisis de cada elemento si esta entre 0 y 5 incremento en 1 la variable 
		si a[i]>=0 y a[i]<=5 Entonces
			def= def+1
		FinSi
		///analisis de cada elemento si esta entre 6 y 10 incremento en 1 la variable 
		si a[i]>=6 y a[i]<=10 Entonces
			reg= reg+1
		FinSi
		///analisis de cada elemento si esta entre 11 y 15 incremento en 1 la variable 
		si a[i]>=11 y a[i]<=15 Entonces
			bue= bue+1
		FinSi
		///analisis de cada elemento si esta entre 16 y 20 incremento en 1 la variable 
		si a[i]>=16 y a[i]<=20 Entonces
			exc= exc+1
		FinSi
	FinPara
	///impresion de informacion por pantalla
	Escribir "Deficientes: ",def
	Escribir "Regulares: ",reg
	Escribir "Buenos: ", bue
	Escribir "Excelentes: ",exc
FinSubProceso

///SubProceso q muestra el vector por pantalla
subproceso mostrarVector(a, b)
	definir i, retorno Como Entero
	para i = 0 Hasta b-1
		escribir a[i] ," "sin saltar
		si i =99 Entonces
			Escribir ""
		FinSi
	FinPara
FinSubProceso
