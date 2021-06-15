Algoritmo menu
	Definir opc Como Caracter
	definir num0, num1 Como Entero

	Escribir "S - Suma"
	Escribir "R - Resta"
	Escribir "M - Multiplicacion"
	Escribir "D - Division"
	Escribir "Eliga la opcion del menu"
	leer opc
	
	Segun opc Hacer ///analizo opc q valor tiene y voy al q corresponde
		"s","S":///Aca se determina q si es s o S realice el siguiente bloque
			escribir "Ingrese los numeros a suma"
			leer num0, num1
			escribir num0+num1
		"r","R":///Aca se determina q si es r o R realice el siguiente bloque
			escribir "Ingrese los numeros a Restar"
			leer num0, num1
			escribir num0-num1
		"m","M":///Aca se determina q si es m o M realice el siguiente bloque
			Escribir "Ingrese los numeros a Multiplicar"
			leer num0, num1
			escribir num0*num1
		"d","D":///Aca se determina q si es d o D realice el siguiente bloque
			escribir "Ingrese los numeros a Dividir (el segundo numero debe ser diferente de 0)"
			leer num0, num1
			escribir num0/num1
		De Otro Modo: ///si el valor asignado no esta muetro este mensaje
			escribir "Opcion mal escogida"
	Fin Segun
FinAlgoritmo
