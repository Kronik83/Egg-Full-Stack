//Una compa��a de seguros tiene contratados a n vendedores. Cada vendedor realiza
//m�ltiples ventas a la semana. La pol�tica de pagos de la compa��a es que cada vendedor
//recibe un sueldo base m�s un 10% extra por comisiones de sus ventas. El gerente de la
//compa��a desea saber, por un lado, cu�nto dinero deber� pagar en la semana a cada
//vendedor por concepto de comisiones de las ventas realizadas, y por otro lado, cu�nto
//deber� pagar a cada vendedor como sueldo total (sueldo base + comisiones). Para cada
//vendedor ingresar cuanto es su sueldo base, cuantas ventas realiz� y cuanto cobr� por cada venta.
Algoritmo sin_titulo
	definir i,j,Nvendedores, ventas, sBase, comision,cVentas, total,vTotal Como Real
	escribir sin saltar "Cantidad de vendedores "
	leer Nvendedores
	total = 0
	vTotal=0
	para i =0 hasta Nvendedores-1
		Escribir "Vendedor N�",i+1
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
