//Realice un algoritmo que solicite al usuario una fecha y muestre por pantalla la fecha
//anterior. Para ello se deberá utilizar un procedimiento llamado diaAnterior que reciba
//una fecha representada a través de tres enteros dia, mes y anio, y retorne la fecha
//anterior. Puede asumir que dia, mes y anio representan una fecha válida. Realice
//pruebas de escritorio para los valores dia=5, mes=10, anio=2012 y para dia=1, mes=3,	anio=2004.

///Concluciones de resolucion
/// determinar si el año es bisiesto, porq febrero en año bisiesto tiene 29 dias
/// que ocurre su el dia es primero de mes, tengo q saber los dias del mes anterior y al mes actual restarle 1
///que pasa si es 1/1/Año_Actual, tengo q saltar a la fecha 31/12/Año_Actual -1
Algoritmo sin_titulo
	definir dia, mes, anio, mesNo Como entero
	escribir "Ingrese dia: "Sin Saltar
	leer dia
	Repetir
		si dia >31 o dia<1
			Escribir "El día Ingresado es incorrecto, ingreselo de nuevo (1 al 31)"
			leer dia
		FinSi
	Mientras Que dia<1 o dia >31
	
	escribir "Ingrese el mes: " Sin Saltar
	leer mes 
	Repetir
		si mes >12 o mes<1 Entonces
			Escribir "El mes Ingresado es incorrecto, ingreselo de nuevo (1 al 12)"
			leer mes
		FinSi
	Mientras Que mes>12 o dia<1
	escribir "Ingrese el año: " Sin Saltar
	leer anio
	
	diaAnterior(dia, mes, anio)
FinAlgoritmo

subproceso diaAnterior(a,b,c)
	definir diaAnt, mesAnt , anioAnt Como entero
	definir bisiesto como caracter
	bisiesto ="Año Normal"
	si a =1 Entonces 
		si b=1 Entonces
			mesAnt=12
			anioAnt= c-1
		sino 
			mesAnt = b
			anioAnt = c
		FinSi
		
		Segun b Hacer
			1:
				diaAnt = 31
			2:
				diaAnt = 31
			3:
				diaAnt=28
			4:
				diaAnt=31
			5:
				diaAnt=30
			6: 
				diaAnt=31
			7:
				diaAnt=30
			8: 
				diaAnt=31
			9:
				diaAnt=31
			10:
				diaAnt=30
			11:
				diaAnt=31
			12:
				diaAnt=30
		Fin Segun
		///determinar si el año es bisiesto o no, porq varian los dias de febrero
		///Un año divisible por 4 y no debe ser divisible por 100. 
		///Si un año es divisible por 100 y además es divisible por 400
		si (c mod 4 = 0 y c mod 100 <> 0) o (c mod 100 = 0 y c mod 400 = 0) Entonces
			si b= 3 Entonces
				diaAnt = 29
				bisiesto = "Año Bisiesto"
			FinSi
		FinSi
		
		si b = 1 Entonces
			mesAnt=12
		sino 
			mesAnt=b-1
		FinSi
	SiNo
		diaAnt=a-1
		mesAnt = b
		anioAnt=c
	FinSi
	escribir "Dia Actual: ",a,"/",b,"/",c," es año",bisiesto
	escribir "Dia Anterior: ",diaAnt,"/",mesAnt,"/",anioAnt 
FinSubProceso
///ene=31 feb =28 mar=31 abr=30 may=31 jun=30 jul=31 ago=31 sep=30,oct=31 nov=30 y dic= 31
