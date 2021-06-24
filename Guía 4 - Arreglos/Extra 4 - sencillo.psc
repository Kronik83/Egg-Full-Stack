//Crear un vector que contenga 100 notas de 100 supuestos estudiantes, con valores entre
//0 y 20 generadas aleatoriamente mediante el uso de la función azar() o aleatorio() de
//PseInt. Luego, de acuerdo a las notas contenidas, el programa debe indicar cuántos
//estudiantes son:
//	a) Deficientes 0-5
//	b) Regulares 6-10
//	c) Buenos 11-15
//	d) Excelentes 16-20
Algoritmo sin_titulo
	definir i, a, n, def, reg, bue, exc Como Entero
	def= 0
	reg= 0
	bue=0
	exc=0
	n = 100
	///definicion del vector con el tamaño asignado por la variable n inicializada en 100
	Dimension a[n]
	para i =0 hasta n-1
		///carga del vector con los datos i =0 hasta 99 (n-1 => 100-1)
		a[i]=Aleatorio(0,20)
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
	Escribir "Vector cargado"
	///llamado al SubProceso mostrarVector 
	mostrarVector(a, n)
	///impresion por pantalla de los datos calculados
	Escribir "Indices obtenidos"
	Escribir "Deficientes: ",def
	Escribir "Regulares: ",reg
	Escribir "Buenos: ", bue
	Escribir "Excelentes: ",exc
FinAlgoritmo

///SubProceso que recive el nombre del vector y su tamaño para imprimirlo por pantalla
subproceso mostrarVector(a, b)
	definir i, retorno Como Entero
	para i = 0 Hasta b-1
		escribir a[i] ," "sin saltar
		si i =99 Entonces
			Escribir ""
		FinSi
	FinPara
FinSubProceso
