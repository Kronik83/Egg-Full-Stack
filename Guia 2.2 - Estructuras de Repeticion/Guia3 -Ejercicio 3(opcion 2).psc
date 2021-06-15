Algoritmo sin_titulo
	definir contador, nume, aux Como Real
	nume =0
	contador =0
	aux=0
	mientras nume <>(-1) hacer
		escribir "ingrese un numero"
		leer nume
		si nume <>-1 Entonces
			aux = aux + nume
			contador = contador +1
		finsi
	FinMientras
	escribir "Suma total = ",aux,", Cant de numeros Ingresados = ",contador
	escribir "Promedio = ",aux/contador
FinAlgoritmo
