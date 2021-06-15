//Realice un programa que, dado un año, nos diga si es bisiesto o no. Un año es bisiesto
//bajo las siguientes condiciones: Un año divisible por 4 es bisiesto y no debe ser divisible
//por 100. Si un año es divisible por 100 y además es divisible por 400, también resulta
//bisiesto. Nota: recuerde la función mod de PSeInt

Algoritmo sin_titulo
	definir anio Como Real
	escribir "Ingrese un año"
	leer anio
	si anio mod 4 =0 y anio mod 100 <>0 Entonces		///Un año divisible por 4 es bisiesto y no debe ser divisible por 100.
		escribir anio," es bisiesto"
	SiNo
		si anio mod 100=0 y anio mod 400=0 Entonces	///Si un año es divisible por 100 y además es divisible por 400.
			Escribir anio ," es bisiesto"
		sino 
			Escribir anio, " no es bisiesto"
		FinSi
	FinSi
FinAlgoritmo
