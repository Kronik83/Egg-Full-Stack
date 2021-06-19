//Diseñar una función que reciba un numero en forma de cadena y lo devuelva como 
//numero entero. El programa podrá recibir números de hasta 3 dígitos. Nota: no poner 
//números con decimales
Algoritmo sin_titulo
	definir nume Como Caracter
	definir num Como Entero
	definir long, dec Como Logico
	escribir "Ingrese un numero "
	repetir
		leer nume
		long = verificarDigitos(nume)
		dec = repetirDecimal(nume)
		si long y dec Entonces
			long=Verdadero
		SiNo
			long = Falso
			Escribir "Ingrese el numero nuevamente, esta ves q no sea mayor a 3 digitos y/o no sea decimal"
		FinSi
	mientras que long=Falso
	
	num = convertir(nume)
	escribir num
FinAlgoritmo
funcion resultado <- convertir(a)
	definir resultado Como Entero
	resultado = ConvertirANumero(a)
FinFuncion

funcion resultado <-verificarDigitos(a)
	definir resultado como logico
	si Longitud(a) >3 Entonces
		resultado = Falso
	SiNo
		resultado = Verdadero
	FinSi
FinFuncion

funcion resultado <- repetirDecimal(a)
	definir resultado, log como logico
	definir i Como Entero
	definir aux Como Caracter
	para i = 0 hasta longitud(a)-1
		aux = subcadena(a,i,i)
		si aux ="," o aux ="." Entonces
			resultado = Falso
			i=Longitud(a)-1
		sino 
			resultado  =Verdadero
		FinSi
	FinPara
FinFuncion
	