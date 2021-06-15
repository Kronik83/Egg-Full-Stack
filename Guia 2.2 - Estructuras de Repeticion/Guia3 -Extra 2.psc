//Escriba un programa que solicite dos números enteros (mínimo y máximo). A
//continuación, se debe pedir al usuario que ingrese números enteros situados entre el
//máximo y mínimo. Cada vez que un numero se encuentre entre ese intervalo, se sumara
//uno a una variable. El programa terminará cuando se escriba un número que no
//pertenezca a ese intervalo, y al finalizar se debe mostrar por pantalla la cantidad de
//números ingresados dentro del intervalo.
Algoritmo sin_titulo
	Definir max, min, num, sum Como Real
	escribir "min"
	leer min
	escribir "Max"
	leer max
	leer num
	sum =0
	mientras num < max y num > min
		leer num
		sum =sum +1
	FinMientras
	escribir "acumulador ",sum
FinAlgoritmo
