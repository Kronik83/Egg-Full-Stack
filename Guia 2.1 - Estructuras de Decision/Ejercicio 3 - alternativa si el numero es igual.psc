//Realizar un programa que pida un número al usuario. Si el número es mayor que 100 se
//deberá de imprimir en pantalla "Es Mayor", y en caso contrario se deberá imprimir "Es Menor".

Algoritmo mayo_o_menor
	definir num Como Entero
	Escribir "Ingrese un numero"
	leer num
	si num >100 Entonces ///si num es mayor q 100  muestro "es mayor"
		escribir "Es Mayor"
	sino ///sino tengo q analizar que pasa con ese valor
		si num = 100 Entonces ///si num = 100  muestro es "igual a 100"
			escribir "Es Igual a 100"
		SiNo ///entonces como no es mayo ni igual por descarte es menor por lo tanto muerto "es menor"
			escribir "Es Menor"
		FinSi
	FinSi
	
FinAlgoritmo
