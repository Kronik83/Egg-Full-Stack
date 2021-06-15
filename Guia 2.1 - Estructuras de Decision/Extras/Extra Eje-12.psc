//a) Para la modalidad salario por comisión se debe ingresar el monto total de las "ventas"
//	realizadas en la semana, y el 40% de ese monto total corresponde al "salario" del empleado.
//b) Para la condición de salario fijo + comisión, se debe ingresar el "valor" que se paga por
//		hora, la cantidad de "horas" trabajadas semanalmente y el monto total de las ventas en
//		esa semana. En este tipo de contrato las horas extras no están contempladas y se fija
//		como "máximo 40 horas" por semana. La comisión por las ventas se calcula como "25% del valor de venta" total.
//c) Finalmente, para la modalidad de salario fijo se debe ingresar el valor que se paga por
//			hora y la cantidad de horas trabajadas en la semana. En el caso de exceder las 40
//			horas semanales, las horas extras se deben pagar con un "extra del 50% del valor de
//			la hora". Realizar un menú de opciones para poder elegir el tipo de contrato que tiene un empleado.
Algoritmo sin_titulo
	definir ventas, horas, cant, extras, hrsN, salario como real
	definir op Como Caracter
	escribir "Menu:"
	escribir "A) Comision"
	escribir "B) Salario Fijo + Comision"
	escribir "C) Salario Fijo"
	leer op
	Segun op Hacer
		"A","a","1":
			escribir "Ingrese el monto total de ventas"
			leer ventas
			salario = ventas*0.4// calculo el 40% de las ventas
			Escribir "El salario es de 40% de las ventas $",salario
		"B","b","2":
			Escribir "Ingrese el valor de las Horas"
			leer horas
			Escribir "Ingrese la cantidad de horas, solo se pagara hasta 40 horas"
			leer cant
			Escribir "Ingrese el monto total de ventas"
			leer ventas
			si cant>40 entonces
				cant = 40//establesco que las horas maximas son 40 si se pasa de 40
			FinSi
			horas= horas*cant//calculo el valor de las horas
			ventas= ventas*0.25//calculo el valor de  las ventas
			salario= horas+ventas
			Escribir "El salario es igual a: ",salario
		"C","c","3":
			Escribir "Ingrese el valor de las horas"
			leer horas
			Escribir "La cantida de Horas"
			leer cant
			si cant>40 Entonces
				extras= cant-40//determino la cantidad de horas extras
				hrsN=cant-extras//determino las  horas normales
			SiNo
				hrsN= cant
			FinSi
			hrsN =(hrsN+extras)*horas//calculo el valor de las horas normales
			extras = extras*horas*0.5//calculo el valor de las horas extras
			salario = hrsN+extras//calculo el salario
			escribir "El salario es igual a ",salario
		De Otro Modo:
			escribir "Opcion incorrecta"
	Fin Segun
FinAlgoritmo
