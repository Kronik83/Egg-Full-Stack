//Escriba un programa que solicite dos n�meros enteros (m�nimo y m�ximo). A
//continuaci�n, se debe pedir al usuario que ingrese n�meros enteros situados entre el
//m�ximo y m�nimo. Cada vez que un numero se encuentre entre ese intervalo, se sumara
//uno a una variable. El programa terminar� cuando se escriba un n�mero que no
//pertenezca a ese intervalo, y al finalizar se debe mostrar por pantalla la cantidad de
//n�meros ingresados dentro del intervalo.
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
