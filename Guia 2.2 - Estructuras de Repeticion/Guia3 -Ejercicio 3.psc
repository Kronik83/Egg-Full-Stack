Algoritmo sin_titulo
	definir contador, nume, aux Como Real
	escribir "ingrese un numero"
	contador =0
	aux=0
	repetir 
		leer nume
		si nume <>(-1) entonces
			aux = aux + nume
			contador = contador +1
		FinSi
	Mientras Que nume <>(-1)
	escribir "Suma total = ",aux,", Cant de numeros Ingresados = ",contador
	escribir "Promedio = ",aux/contador
FinAlgoritmo
