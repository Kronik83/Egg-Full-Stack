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
	Dimension vector[n]
	para i =0 hasta n-1
		vector[i]=Aleatorio(0,20)
	FinPara
	Escribir "Vector cargado"
	mostrarVector(vector, n)
	Escribir "Indices obtenidos"
	indices(vector, n)
FinAlgoritmo

SubProceso indices(a, b)
	definir i, def, reg, bue, exc Como Entero
	def= 0
	reg= 0
	bue=0
	exc=0
	para i= 0 hasta b-1
		si a[i]>=0 y a[i]<=5 Entonces
			def= def+1
		FinSi
		si a[i]>=6 y a[i]<=10 Entonces
			reg= reg+1
		FinSi
		si a[i]>=11 y a[i]<=15 Entonces
			bue= bue+1
		FinSi
		si a[i]>=16 y a[i]<=20 Entonces
			exc= exc+1
		FinSi
	FinPara
	Escribir "Deficientes: ",def
	Escribir "Regulares: ",reg
	Escribir "Buenos: ", bue
	Escribir "Excelentes: ",exc
FinSubProceso

subproceso mostrarVector(a, b)
	definir i, retorno Como Entero
	para i = 0 Hasta b-1
		escribir a[i] ," "sin saltar
		si i =99 Entonces
			Escribir ""
		FinSi
	FinPara
FinSubProceso
