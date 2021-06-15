//Crea un procedimiento "convertirEspaciado", que reciba como argumento un texto y
//muestra una cadena con un espacio adicional tras cada letra.
//Por ejemplo, "Hola, tú" devolverá "H o l a , t ú ". Crea un programa principal donde se
//use dicho procedimiento.
Algoritmo sin_titulo
	definir palabra como caracter
	Escribir "Ingrese una palabra o frase"
	leer palabra
	convertirEspaciado(palabra)
FinAlgoritmo

SubProceso convertirEspaciado(a)
	definir i Como Entero
	definir aux Como Caracter
	
	para i = 0 hasta longitud(a)-1
		Escribir sin saltar subcadena(a,i,i)
		si i <> longitud(a)-1 Entonces
			escribir sin saltar " "
		SiNo
			escribir ""
		FinSi
	FinPara
FinSubProceso
