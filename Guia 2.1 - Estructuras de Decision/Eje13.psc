//Escriba un programa para obtener el grado de eficiencia de un operario de una fábrica
//de tornillos, de acuerdo a las siguientes dos condiciones que se le imponen para un
//período de prueba:
//		? Producir menos de 200 tornillos defectuosos. tDef < 200
//		? Producir más de 10000 tornillos sin defectos. tTotales > 1000
//El grado de eficiencia se determina de la siguiente manera:
//		? Si no cumple ninguna de las condiciones, grado 5. F y F
//		? Si sólo cumple la primera condición, grado 6. V y F
//		? Si sólo cumple la segunda condición, grado 7. F y V
//		? Si cumple las dos condiciones, grado 8 V y V

///Nota: para trabajar este ejercicio de manera prolija, ir probando cada inciso que pide el
///ejercicio. No hacer todos al mismo tiempo y después probar.

Algoritmo tornillos
	definir tDef, tTotales, auxiliar Como Entero
	definir primera, segunda Como Logico
	Escribir "Ingrese la cantidad de tornillos fabricados"
	leer tTotales
	Escribir "Ingrese la cantidad de tornillos defectuosos"
	leer tDef
	auxiliar = tTotales -tDef
	Escribir "Tornillos fabricados sin defectos", auxiliar
	si tDef <= 200 Entonces 	///determino q si los tornillos defectuosos son menos de 200
		primera = Verdadero 	///se cumple la primer Verdadero
	SiNo
		primera = Falso      	///no se cumple la primer Falso
	FinSi
	si auxiliar > 10000 Entonces	///condicion de q los tornillo sin dedefectos sean mas de 10000
		segunda = Verdadero  		///se cumple la segunda Verdadero
	SiNo
		segunda = Falso			/// no se cumple la segunda falso
	FinSi
	
	si primera = Verdadero y segunda = Verdadero Entonces 
		escribir "Grado 8"			///se cumplen las dos condiciones
	SiNo
		si primera = Verdadero y segunda = Falso Entonces 
			escribir "grado 6"		///se cumple solo la Segunda
		SiNo
			si primera = Falso y Segunda = Verdadero Entonces	
				escribir "Grado 7"	///se cumple solo la primera
			SiNo
				escribir "Grado 5"	/// no se cumple ninguna
			FinSi
		FinSi
	FinSi

FinAlgoritmo
