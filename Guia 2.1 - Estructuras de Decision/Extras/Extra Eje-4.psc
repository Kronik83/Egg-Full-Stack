//La empresa "Te llevo a todos lados" está destinada al alquiler de autos y tiene un sistema
//de tarifa que consiste en cobrar el alquiler por hora. Si el cliente devuelve el auto dentro
//de las 2 horas de uso el valor que corresponde pagar es de $400 pesos y la nafta va de
//regalo. Cuando el cliente regresa a la empresa pasadas las 2 horas, se ingresan la
//cantidad de litros de nafta gastados y el tiempo transcurrido en horas. Luego, se le cobra
//40 pesos por litro de nafta gastado, y la hora se fracciona en minutos, cobrando un total
//de $5,20 el minuto de uso. Realice un programa que permita registrar esa información y
//el total a pagar por el cliente
Algoritmo sin_titulo
	definir hora, min, litros, costoHora, costoLitros Como Real
	definir auxMin, aux2 Como Caracter
	escribir "Ingrese la hora (formato = hh.mm)"
	leer hora
	si hora<=2 Entonces
		Escribir "cobrar $400"	///si las horas son menores a 2hs
	SiNo
		///si las horas son mas de 2hs
		///como estableci q la hora la pongas en formato decimal puedo captura las horas con los entero
		/// y los min con los decimales.
		min = hora - trunc(hora) 	///capturo solo los minutos y los guardo en la variable min
		min= min *100 			///como los min al momento de extraerlos estan en decimal los multiplico por 100 para convertirlos en enteros
		hora=trunc(hora) 			///extraigo solo la hora
		hora = hora *60			///convierto las horas en minutos
		min = min +(hora*60)		///a la variable min le sumo el parentesis que representa la hora convertida en minutos
		costoHora = min*5.2
		escribir "Ingrese los litros gastados"
		leer litros
		costoLitros = litros *40
		escribir "Resume:"
		escribir min," min a $5.2/min = $",costoHora
		escribir litros," lts a $40/lts = $",costoLitros
		escribir "Cobrar: $",costoHora+costoLitros
	FinSi
FinAlgoritmo


///trunc(variable) es una funcion q solo toma la parte entera de un numero. Ejemplo : trunc(2.5) => 2

///Ejemplo
///hora = 3.5 (3horas,50 min)
///min = hora - trunc(hora)  esto es para determinar los min, 3.5 - trunc(3.5) => 3.5 - 3 = 0.5	
///min = 0.5
///min= min *100 		convierto los decimales en entero de dos cifras		0.5 * 100 = 50 => min = 50
///hora=trunc(hora)  	hora = trunc(3.5) => hora = 3
///hora = hora *60 	paso horas a min
///min = min + hora 	junto todos los min
///costoHora = min * 5.2 	calculo el costo del tiempo de alquiler por min