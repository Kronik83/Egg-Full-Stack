//Un colegio desea saber qué porcentaje de niños y qué porcentaje de niñas hay en el 
//curso actual. Diseñar un algoritmo para este propósito. Recuerda que para calcular el 
//porcentaje puedes hacer una regla de 3 simple. El programa debe solicitar al usuario que 
//ingrese la cantidad total de niños, y la cantidad total de niñas que hay en el curso
Algoritmo sin_titulo
	definir varones, mujeres como enteros
	Escribir "Ingrese la cantidad de varones y mujeres"
	leer varones, mujeres
	
	escribir "Porcentaje Varones=", varones * 100 / (varones + mujeres)
	escribir "Porcetaje Mujeres= ", mujeres * 100 / (varones + mujeres)

FinAlgoritmo
///(varones+mujere) = total
///otra alternativa era crear una variable para el total, y una para porcentaje de varones y/o mujeres
/// porcentajeMujeres=mujeres*100/total
/// porcentajeVarones = 100-porcentajeMujeres

