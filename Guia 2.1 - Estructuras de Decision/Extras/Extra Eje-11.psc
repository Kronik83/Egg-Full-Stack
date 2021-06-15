//El promedio de los trabajos prácticos de un curso se calcula en base a cuatro notas de
//las cuales se elimina la nota menor y se promedian las tres notas más altas. Escriba un
//programa que determine cuál es la nota eliminada y el promedio de los trabajos
//prácticos de un estudiante

Algoritmo sin_titulo
	definir num0, num1, num2, num3, menor, mayor, promedio Como Real	
	Escribir "Ingrese las cuatro notas"
	leer num0, num1, num2, num3
	si num0 < num1 y num0<num2 y num0 < num3 Entonces
		menor= num0
	SiNo
		si num1<num0 y num1<num2 y num1<num3 Entonces
			menor = num1
		SiNo
			si num2<num0 y num2< num1 y num2<num3 Entonces
				menor = num2
			SiNo
				si num3<num0 y num3<num1 y num3<num2 Entonces
					menor= num3
				FinSi
			FinSi
		finsi
	FinSi
	promedio = (num0+num1+num2+num3-menor)/3
	escribir "El promedio es igual a ",promedio," y se elimino la nota menor q fue ",menor
FinAlgoritmo
