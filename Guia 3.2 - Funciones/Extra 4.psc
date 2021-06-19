//Los empleados de una fábrica trabajan en dos turnos: Diurno y Nocturno. Se desea 
//calcular el jornal diario de acuerdo con las siguientes reglas:
//	a) La tarifa de las horas diurnas es de $ 90
//	b) La tarifa de las horas nocturnas es de $ 125
//	c) En caso de ser feriado, la tarifa se incrementa en un 10% si el turno es diurno y 
//	en un 15% si el turno es nocturno.
//El programa debe solicitar la siguiente información al usuario: el nombre del 
//trabajador, el día de la semana, el turno (diurno o nocturno) y la cantidad de horas 
//trabajadas. Además, debemos preguntarle al usuario si el día de la semana (lunes, 
//martes, miércoles, etc.) era festivo o no, para poder calcular el jornal diario. Utilice 
//una función para realizar el cálculo

Algoritmo sin_titulo
	definir nombre Como Caracter
	escribir "---- Calculo de jornales ----"
	Escribir "Ingrese el nombre del trabajador: "Sin Saltar
	leer nombre
	calcularJornal(nombre)
FinAlgoritmo

subproceso calcularJornal(a)
	definir turno, feriado, day Como Caracter
	definir jornal, dia, porcentaje, horas Como Real
	
	Repetir
		Borrar Pantalla
		Escribir "--- Dia ---"
		escribir "1-Lunes"
		EScribir "2-Martes"
		escribir "3-Miercoles"
		escribir "4-jueves"
		escribir "5-Viernes"
		escribir "6-Sabado"
		escribir "7-Domingo"
		escribir "Ingrese el numero del dia correspondiente" Sin Saltar
		leer dia
	Mientras Que 0 > dia o dia > 7
	
	repetir
		Borrar Pantalla
		Escribir "--- Turno ---"
		Escribir "D - Diurno"
		Escribir "N - Nocturno"
		escribir "Ingrese la letra del turno: " sin saltar
		leer turno
	mientras que (turno <> "d" y turno <> "n") 
	
	si dia <> 7 entonces
		repetir
			Borrar Pantalla
			
			Escribir "--- Feriado ---"
			Escribir "Feriado: Si o No"
			leer feriado
			feriado = Minusculas(feriado)
		mientras que feriado <> "si" y feriado <>"no" y feriado <>"s" y feriado<>"n"
		si feriado = "s" Entonces
			feriado = "si"
		SiNo
			feriado="no"
		FinSi
	SiNo
		feriado = "si"
	finsi
	repetir
		Borrar Pantalla
		Escribir  "--- Horas ---"
		Escribir "Ingrese la Cantidad de Horas trabajadas: " Sin Saltar
		leer horas
		si 0 < horas y horas < 24 Entonces
			escribir "0 menor que ",horas," y ",horas," menor que 24"
		SiNo
			escribir "cambiar"
		FinSi
	mientras que horas > 24 o horas < 1
		
	porcentaje = determinarPorcentaje(dia, turno, feriado)
	jornal = calcularHoras(horas, porcentaje, turno)
	
	si  dia <> 7 Entonces
		si feriado = "si" Entonces
			feriado=" siendo feriado"
		sino 
			feriado=""
		FinSi
	SiNo
		feriado = "se considera Feriado"
	FinSi
	
	si turno = "n" Entonces
		turno="Nocturno"
	SiNo
		turno="Diurno"
	FinSi
	segun dia
		1:
			day = "Lunes"
		2:
			day = "Martes"
		3:
			day = "Miercoles"
		4:
			day = "Jueves"
		5:
			day = "Viernes"
		6:
			day = "Sabado"
		7:
			day = "Domingo"
	FinSegun
	
	Borrar Pantalla
	escribir a," trabajo ",horas," horas, el dia ",day," en el turno ",turno, feriado
	Escribir "obtuvo un jornal de $",jornal 
FinSubProceso

funcion retorno <- calcularHoras(a,b,c)
	definir retorno Como real
	si c = "d" Entonces
		retorno = a*90+(a*90*b)
	SiNo
		retorno = a*125+(a*125*b)
	FinSi
	
FinFuncion

funcion retorno <- determinarPorcentaje(a,b,c)
	definir retorno como real
	segun a
		1, 2, 3, 4, 5, 6:
			si c = "no" entonces
				si b = "d" Entonces
					retorno = 0 
				sino
					retorno = 0
				FinSi
			SiNo
				si b = "d" Entonces
					retorno = 0.1
				sino
					retorno = 0.15
				FinSi
			FinSi
		7:
			si b= "d" Entonces
				retorno = 0.1
			SiNo
				retorno = 0.15
			FinSi
	FinSegun
FinFuncion
//	a) La tarifa de las horas diurnas es de $ 90
//	b) La tarifa de las horas nocturnas es de $ 125
//	c) En caso de ser feriado, la tarifa se incrementa en un 10% si el turno es diurno y 
//	en un 15% si el turno es nocturno.
	