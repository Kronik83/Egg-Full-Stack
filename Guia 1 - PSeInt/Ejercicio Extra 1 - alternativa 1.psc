//Un colegio desea saber qu� porcentaje de ni�os y qu� porcentaje de ni�as hay en el 
//curso actual. Dise�ar un algoritmo para este prop�sito. Recuerda que para calcular el 
//porcentaje puedes hacer una regla de 3 simple. El programa debe solicitar al usuario que 
//ingrese la cantidad total de ni�os, y la cantidad total de ni�as que hay en el curso
Algoritmo sin_titulo
	definir varones, mujeres, total como real
	Escribir "Ingrese la cantidad de varones y mujeres"
	leer varones, mujeres
	
	total = varones+mujeres
	mujeres= mujeres*100/total ///use la misma variable q almaceno la cantidad de ni�as, para almacenar el porcentaje
	
	escribir "Porcentaje Varones = ", 100-mujeres, "%"
	escribir "Porcetaje Mujeres = ", mujeres,"%"

FinAlgoritmo


///podria a ver usa la variable varones y haber sacado solo el porcentaje de varones
/// varones =varones *100/total
/// escribir "Porcentaje Varones = ", varones, "%"
/// escribir "Porcetaje Mujeres = ", 100-varones,"%"
/// tambien pude definir varones y mujeres como reales y total como entero.
///
