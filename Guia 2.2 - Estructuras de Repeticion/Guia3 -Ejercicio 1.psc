//Escriba un programa que valide si una nota está entre 0 y 10, sino está entre 0 y 10 la 
//nota se pedirá de nuevo hasta que la nota sea correcta
Algoritmo sin_titulo
	Definir i, num Como Entero
	i = -1
	
	mientras (i<0) o (i >10) Hacer
		Escribir"Ingrese un Numero"
		leer i 
		si i<0 o i>10 entonces
			escribir "El numero ingresado es incorrecto"
		FinSi
	FinMientras
FinAlgoritmo
