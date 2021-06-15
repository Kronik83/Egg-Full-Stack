///Una verdulería ofrece las manzanas con descuento según la siguiente tabla:
///		Nº DE KILOS COMPRADOS          % DESCUENTO
///		0-2								0%
///		2.01-5							10%
///		5.01-10							15%
///		+10.01							20%
///Determinar cuánto pagará una persona que compre manzanas en esa verdulería.
/// Determino que el kilo vale precio=150
Algoritmo sin_titulo
	definir kilos, aux, precio,costo, descuento, total como real
	escribir "Ingrese la cantidad de kilos comprados"
	leer kilos
	precio =150
	si (kilos >= 0) Y (kilos <= 2) entonces
		aux = 0
	SiNo
		si (kilos>2) y(kilos<=5)Entonces
			aux= 0.1
		SiNo
			si kilos>5 y kilos <=10 Entonces
				aux=0.15
			sino 
				aux=0.2
			FinSi
		FinSi
	FinSi
	costo = kilos*precio//calculo el costo por kg
	descuento=costo*aux//calculo el descuento
	total= costo-descuento//calculo el total
	
	Escribir kilos,"kg de manzanas"
	si aux>=0 Entonces
		escribir "con el descuecno del", aux*100,"% aplicado vale $",total
	SiNo
		escribir "vale $",total
	FinSi
		
FinAlgoritmo
