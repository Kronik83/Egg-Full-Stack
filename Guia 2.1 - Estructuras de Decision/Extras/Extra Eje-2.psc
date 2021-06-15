//   Una tienda ofrece para los meses de septiembre, octubre y noviembre un descuento del
//	10% sobre el total de la compra que realiza un cliente. Solicitar al usuario que ingrese un
//	mes y el importe de la compra. El programa debe calcular cuál es el monto total que se
//	debe cobrar al cliente e imprimirlo por pantalla. 
Algoritmo sin_titulo
	definir meses Como Caracter
	definir importe Como Real
	escribir "Ingrese el Mes de compra"
	leer meses
	escribir "Ingrese el Importe"
	leer importe
	meses = Minusculas(meses) 
	///funcion minuscula, convierte cada caracter en minuscula eliminando ambiguedades de escritura con Mayusculas y Minusculas
	
	Si meses= "septiembre" o meses="octubre" o meses ="noviembre" Entonces
		Escribir Sin Saltar"Usted debe abonar: $", importe 
		Escribir " pero tiene un descuento del 10% = $",importe * 0.1 ///el 10% del importe
		Escribir "por lo q debe abonar solo $",importe - (importe*0.1) ///El monto con el descuento aplicado
	SiNo
		Escribir "Usted debe abonar: $", importe
	FinSi
	
FinAlgoritmo
