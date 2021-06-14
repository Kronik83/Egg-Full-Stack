//Un colegio desea saber qué porcentaje de niños y qué porcentaje de niñas hay en el 
//curso actual. Diseñar un algoritmo para este propósito. Recuerda que para calcular el 
//porcentaje puedes hacer una regla de 3 simple. El programa debe solicitar al usuario que 
//ingrese la cantidad total de niños, y la cantidad total de niñas que hay en el curso
Algoritmo sin_titulo
	definir varones, mujeres, total Como Entero
	definir porcVarones, porcMujeres como real ///LAS DEFINI REALES A CAUSA Q PUEDE DAR DECIMALES DE RESULTADO
	Escribir "Ingrese la cantidad de varones y mujeres"
	leer varones, mujeres
	
	total = varones+mujeres
	porcMujeres = mujeres*100/total 
	porcVarones = varones*100/total
	
	escribir "Porcentaje Varones = ", porcMujeres,"%"
	escribir "Porcetaje Mujeres = ", porcVarones,"%"

FinAlgoritmo