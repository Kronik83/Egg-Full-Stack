//Solicitar al usuario que ingrese un valor entre 1 y 7. EL programa debe mostrar por
//pantalla un mensaje que indique a qué día de la semana corresponde. Considere que el
//número 1 corresponde al día "Lunes", y así sucesivamente
Algoritmo sin_titulo
	definir dia Como Entero
	escribir "Ingrese un numero del 1 al 7"
	leer dia
	Segun dia Hacer
		1:
			Escribir "Lunes"
		2:
			Escribir "Martes"
		3:
			Escribir "Miercoles"
		4:
			Escribir "Jueves"
		5:
			Escribir "Viernes"
		6:
			escribir "Sabado"
		7:
			escribir "Domingo"
		De Otro Modo:
			escribir "Ingreso un numero fuera del intervalos de [1-7]"
	Fin Segun
FinAlgoritmo
