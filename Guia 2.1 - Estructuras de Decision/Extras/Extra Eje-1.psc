//.Realizar un programa que pida tres notas y determine si un alumno aprueba o reprueba
// un curso, sabiendo que aprobará el curso si su promedio de tres calificaciones es mayor
// o igual a 70; y reprueba en caso contrario. 
Algoritmo sin_titulo
	definir nota,notaAux, bandera Como Real
	bandera =0
	notaAux =0
	Escribir "Ingrese Nota"
	repetir
		bandera= bandera +1
		leer nota
		notaAux=nota+notaAux
	Mientras Que bandera <3
	bandera = notaAux/3
	escribir bandera
	si bandera>= 70 entonces
		Escribir "Aprobo"
	sino 
		Escribir "Reprobo"
	FinSi
FinAlgoritmo
