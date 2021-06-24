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
	///definicion de arreglo llamado "vector" de tamaño 20
	dimension vector[20]
	///dato por teclado frase se pide q no supere los 20 caracteres y no sea vacia
	Repetir
		Escribir "Ingrese una frase de no mas de 20 caracteres"
		leer frase
	Mientras Que Longitud(frase) > 20 o frase=""
	///limite contien la longitud de frase menos un caracter (como despues uso la funcion subcadena con este limite
	///y sub cadena parde desde 0 hasta la ultima letra, en este cado es limite)
	limite = Longitud(frase)-1
	///carga de la frase en el vector
	para i = 0 hasta 19
		si limite>=i entonces
			///por medio del condcional mientras la pocision del indice no sea mayor al limite voy a ir cargando 
			///en cada posicion una letra extraida de la frase por medio de subcadena
			vector[i]=subcadena(frase,i,i)
		SiNo
			///si se termina la frase completo hasta finalizar el vector con espacios
			vector[i] = " " 
		FinSi
	FinPara
	escribir "Vector Original"
	/// muestro el vector por medio de un subprocesdo
	mostrarVector(vector)
	///ingreso el caracter a agreagar
	escribir "Ingrese un caracter: " Sin Saltar
	leer carc
	///control de ingreso de posicion si el numero ingresado es menor q 0 o mayor a 19, 
	///lo vuelvo a pedir hasta ingresar un valor valido
	Repetir
		escribir "Ingrese una posicion del 0 al 19: "Sin Saltar
		leer pos
	Mientras Que pos<0 o pos>19
	///verifico si el vector en la posision indicada es igual a espacio
	si vector[pos]=" " Entonces
		///en esa  posision coloco el caracter anteriormente especificado
		vector[pos]= carc
		mostrarVector(vector)	///muestro el vector actual
	SiNo
		///si no se encuentra explico
		Escribir "La posicion esta ocupada por la letra ", vector[pos]
	FinSi
FinAlgoritmo

///subproceso q muestra el vector, con algunas particularidades.
subproceso mostrarVector(a)
	definir i Como Entero
	///primer bucle muestra las posiciones del 0-9 y las decenas tmb de 0-9 para mejor visualizacion en la comparacion con el vector
	/// ESTO ES OPCIONAL
	para i = 0 hasta 19 Hacer
		si i = 19
			escribir i-10
		sino
			si i <10 entonces
				escribir i," " sin saltar
			SiNo
				escribir i-10, " " Sin Saltar
			FinSi
		FinSi
	FinPara
	///bucle q muestra el vector en una oracion
	para i = 0 hasta 19
		Escribir a[i], " " Sin Saltar
		si i =19 Entonces	///este si es para q al finalizar me ingrese un salto de linea
			Escribir ""		///salto de linea
		FinSi
	FinPara
FinSubProceso


	