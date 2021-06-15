

//Crear una procedimiento que calcule la temperatura media de un día a partir de la
//temperatura máxima y mínima. Crear un programa principal, que utilizando un
//procedimiento, vaya pidiendo la temperatura máxima y mínima de n días y vaya
//mostrando la media de cada día. El programa pedirá el número de días que se van a introducir.
Algoritmo sin_titulo
	definir dia, i, max, min Como Entero
	Escribir sin saltar "Ingrese la cantida de días: ";
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
	