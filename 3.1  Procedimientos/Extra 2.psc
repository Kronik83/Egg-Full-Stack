//Realizar un subproceso que reciba una letra y muestre un mensaje si esa letra esta
//entre las letras "M" y "T". Recordar que Pseint le da un valor numérico a cada letra a
//través del Código Ascii.
Algoritmo sin_titulo
	definir letra Como Caracter
	Escribir "Ingrese una letra"
	leer letra
	entreMyT(letra)
FinAlgoritmo

SubProceso entreMyT(a)
	si a < "t" y a > "m" Entonces
		Escribir a," esta entre m y t"
	SiNo
		si a < "T" y a > "M" Entonces
			Escribir a ," esta entre M y T"
		SiNo
			Escribir a,"No esta entre M y T, ni entre m y t" 
		FinSi
	FinSi
FinSubProceso
