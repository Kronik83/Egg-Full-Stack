//Si se compran menos de cinco llantas el precio es de $3000 cada una, si se compran
//entre 5 y 10 el precio es de $2500, y si se compran más de 10 el precio es $2000. Obtener
//la cantidad de dinero que una persona tiene que pagar por cada una de las llantas que
//compra, y el monto total que tiene que pagar por el total de la compra
Algoritmo sin_titulo
	definir precio, cant Como Entero
	Escribir "Ingrese la cantida de llantas a comprar:"
	leer cant
	si cant<5 Entonces /// menos de 5
		precio = 3000
	SiNo
		si (cant>=5 Y cant <=10) entonces ///enter 5 y 10
			precio = 2500
		sino /// mas de 10
			precio = 2000
		FinSi
	FinSi
	escribir cant, " llantas a $",precio," c/u = $",cant*precio 
FinAlgoritmo
