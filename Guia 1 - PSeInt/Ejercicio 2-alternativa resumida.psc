//Conocido el n�mero en matem�tica PI ?, pedir al usuario que ingrese el valor del radio 
//de una circunferencia y calcular y mostrar por pantalla el �rea y per�metro. Recuerde que 
//para calcular el �rea y el per�metro se utilizan las siguientes f�rmulas:
		//area = PI * radio2 
		//perimetro = 2 * PI * radio
Algoritmo sin_titulo
	definir radio Como Real ///defini radio como real ya que puede ser un numero decimal.
	escribir "Ingrese el valor del radio"
	leer radio

	Escribir "Perimetro = ",2 * PI * radio
	Escribir "Area = ",PI * radio^2 /// si el simbolo de exponencial no les sale es lo mismo "radio*radio"
	
FinAlgoritmo

///PI ya es una constante definida por el programa