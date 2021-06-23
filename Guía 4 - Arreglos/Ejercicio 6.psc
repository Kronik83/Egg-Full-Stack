//Disponemos de un vector unidimensional de 20 elementos de tipo carácter. Se pide
//desarrollar un programa que:
//	a. Pida una frase al usuario y luego ingrese la frase dentro del arreglo letra por letra. 
////Ayuda: utilizar la función Subcadena de PSeInt.
//	b. Una vez completado lo anterior, pedirle al usuario un carácter cualquiera y una
//	posición dentro del arreglo, y el programa debe intentar ingresar el carácter
//	en la posición indicada, si es que hay lugar (es decir la posición está vacía o
//	es un espacio en blanco). De ser posible debe mostrar el vector con la frase y
//	el carácter ingresado, de lo contrario debe darle un mensaje al usuario de que
//	esa posición estaba ocupada.
//Por ejemplo, suponiendo la siguiente frase y los subíndices del vector:
//	H o l a m u n d o   c  r  u  e  l  !
//	0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
//Si se desea ingresar el carácter "%" en la posición 10, entonces el resultado sería:
//		H o l a m u n d o % c r u e l !
//		0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
Algoritmo sin_titulo
	definir vector, frase, carc Como Caracter
	definir i ,pos, limite Como Entero
	definir log Como Logico
	log = Falso
	dimension vector[20]
	Escribir "Ingrese una frase de no mas de 20 caracteres"
	leer frase
	limite = Longitud(frase)-1
	Esperar Tecla
	para i = 0 hasta 19
		si limite>=i entonces
			vector[i]=subcadena(frase,i,i)
		SiNo
			vector[i] = " " 
		FinSi
	FinPara
	escribir "Vector Original"
	mostrarVector(vector)
	escribir "Ingrese un caracter: " Sin Saltar
	leer carc
	Repetir
		escribir "Ingrese una posicion del 1 al 20: "Sin Saltar
		leer pos
	Mientras Que pos<1 o pos>20
	pos = pos - 1
	para  i=0 hasta 19
		si vector[pos]=" " Entonces
			vector[pos]= carc
			log= Verdadero
		FinSi
	FinPara
	si log = Verdadero entonces
		mostrarVector(vector)
	SiNo
		Escribir "La posicion esta ocupada por la letra ", vector[pos]
	FinSi
FinAlgoritmo

subproceso mostrarVector(a)
	definir i Como Entero
	para i = 0 hasta 19 Hacer
		si i = 19
			escribir i+1
		sino
			si i <9 entonces
				escribir i+1," " sin saltar
			SiNo
				escribir i-9, " " Sin Saltar
			FinSi
		FinSi
	FinPara
	para i = 0 hasta 19
		Escribir a[i], " " Sin Saltar
		si i =19 Entonces
			Escribir ""
		FinSi
	FinPara
FinSubProceso


	