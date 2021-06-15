Algoritmo menu
	Definir opc Como Caracter
	definir num0, num1, aux Como Entero
	definir divisio Como Real
	Escribir "S - Suma"
	Escribir "R - Resta"
	Escribir "M - Multiplicacion"
	Escribir "D - Division"
	Escribir "Eliga la opcion del menu"
	leer opc
	
		//condicion para determinar si opc es verdad si coloca  s o S
	si  opc == "S" | opc=="s" Entonces
		aux =1 ///variable auxiliar es = 1
	finsi
	si opc=="R" | opc=="r" Entonces
		aux = 2
	finsi
	si opc=="M" | opc=="m" Entonces
		aux=3
	finsi
	si pc=="D" | opc=="d" entonces
		aux =4
	FinSi

	
	Segun aux Hacer ///analizo aux q valor tiene y voy al q corresponde
		1:
			escribir "Ingrese los numeros a suma"
			leer num0
			leer num1
			escribir num0+num1
			
		2:
			escribir "Ingrese los numeros a Restar"
			leer num0
			leer num1
			escribir num0-num1
		3:
			Escribir "Ingrese los numeros a Multiplicar"
			leer num0
			leer num1
			escribir num0*num1
		4:
			escribir "Ingrese los numeros a Dividir (el segundo numero debe ser diferente de 0)"
			leer num0
			leer num1
			escribir num0/num1
		De Otro Modo: ///si el valor asignado no esta muetro este mensaje
			escribir "Opcion mal escogida"
	Fin Segun
FinAlgoritmo
