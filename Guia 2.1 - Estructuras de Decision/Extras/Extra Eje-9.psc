//Realice un programa que, dado un a�o, nos diga si es bisiesto o no. Un a�o es bisiesto
//bajo las siguientes condiciones: Un a�o divisible por 4 es bisiesto y no debe ser divisible
//por 100. Si un a�o es divisible por 100 y adem�s es divisible por 400, tambi�n resulta
//bisiesto. Nota: recuerde la funci�n mod de PSeInt

Algoritmo sin_titulo
	definir anio Como Real
	escribir "Ingrese un a�o"
	leer anio
	si anio mod 4 =0 y anio mod 100 <>0 Entonces		///Un a�o divisible por 4 es bisiesto y no debe ser divisible por 100.
		escribir anio," es bisiesto"
	SiNo
		si anio mod 100=0 y anio mod 400=0 Entonces	///Si un a�o es divisible por 100 y adem�s es divisible por 400.
			Escribir anio ," es bisiesto"
		sino 
			Escribir anio, " no es bisiesto"
		FinSi
	FinSi
FinAlgoritmo
