

//Crear una procedimiento que calcule la temperatura media de un d�a a partir de la
//temperatura m�xima y m�nima. Crear un programa principal, que utilizando un
//procedimiento, vaya pidiendo la temperatura m�xima y m�nima de n d�as y vaya
//mostrando la media de cada d�a. El programa pedir� el n�mero de d�as que se van a introducir.
Algoritmo sin_titulo
	definir dia, i, max, min Como Entero
	Escribir sin saltar "Ingrese la cantida de d�as: ";
	leer dia
	
	para i=1 hasta dia Hacer
		Escribir "Ingrese la maxima y minima para el dia ",i
		leer max, min
		media(max, min)
	FinPara
	
FinAlgoritmo


SubProceso media (a,b)
	
	Escribir "Media de ",(a+b)/2
	
FinSubProceso
	