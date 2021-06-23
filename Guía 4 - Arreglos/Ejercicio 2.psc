//Realizar un programa que lea 10 números reales por teclado, los almacene en un arreglo
//y muestre por pantalla la suma, resta y multiplicación de todos los números ingresados
//al arreglo.
Algoritmo sin_titulo
	definir i, suma, resta, multi, vector Como Entero
	definir signo Como Caracter
	Dimension vector[10]
	Escribir "Ingrese los datos al vector"
	para i = 0 Hasta 9
		leer vector[i]
	FinPara
	para i=0 hasta 9
		si i = 0 Entonces
			suma = vector[i]
			resta= vector[i]
			multi=vector[i]
		SiNo
			suma = suma + vector[i]
			resta= resta - vector[i]
			multi = multi * vector[i]
		FinSi
	FinPara
	escribir "Suma: " Sin Saltar
	signo="+"
	mostrarVector(vector,signo)
	escribir suma
	
	escribir "Resta: " Sin Saltar
	signo="-"
	mostrarVector(vector,signo)
	escribir resta
	
	Escribir "Multiplicacion: " Sin Saltar
	signo="*"
	mostrarVector(vector,signo)
	escribir multi
	
FinAlgoritmo

subproceso mostrarVector(a,b)
	Definir i Como Entero
	para i= 0 hasta 9
		si i = 9 Entonces
			escribir a[i],"=" 
		SiNo
			Escribir a[i], " ",b," " Sin Saltar
		FinSi
	FinPara
FinSubProceso

