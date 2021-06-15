//Una compañía de seguros tiene contratados a n vendedores. Cada vendedor realiza
//múltiples ventas a la semana. La política de pagos de la compañía es que cada vendedor
//recibe un sueldo base más un 10% extra por comisiones de sus ventas. El gerente de la
//compañía desea saber, por un lado, cuánto dinero deberá pagar en la semana a cada
//vendedor por concepto de comisiones de las ventas realizadas, y por otro lado, cuánto
//deberá pagar a cada vendedor como sueldo total (sueldo base + comisiones). Para cada
//vendedor ingresar cuanto es su sueldo base, cuantas ventas realizó y cuanto cobró por cada venta.
Algoritmo sin_titulo
	definir i,j,Nvendedores, ventas, sBase, comision,cVentas, total,vTotal Como Real
	escribir sin saltar "Cantidad de vendedores "
	leer Nvendedores
	total = 0
	vTotal=0
	para i =0 hasta Nvendedores-1
		Escribir "Vendedor N°",i+1
		escribir sin saltar "Ingrese el suledo Base: "
		leer sBase
		escribir sin saltar "Cantidad de Ventas"
		leer cVentas
		para j= 0 hasta cVentas-1
			Escribir sin saltar"Moto de venta ",j+1," $"
			leer ventas
			vTotal = vTotal+ventas
		FinPara
		comision =vTotal * 0.1
		escribir "Comision =$",comision
		escribir "Sueldo Total =$ ",sBase+comision
		total = sBase+comision +total
	FinPara
	escribir "El gerente debera abonar un total de $",total," en concepto de sueldo de sus ",Nvendedores
	
FinAlgoritmo
