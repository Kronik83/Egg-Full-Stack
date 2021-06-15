//Leer tres números que denoten una fecha (día, mes, año) y comprobar que sea una fecha
//válida. Si la fecha no es válida escribir un mensaje de error por pantalla. Si la fecha es
//válida se debe imprimir la fecha cambiando el número que representa el mes por su
//nombre. Por ejemplo: si se introduce 1 2 2006, se deberá imprimir "1 de febrero de 2006"
Algoritmo sin_titulo
	definir num0, num1, num2 Como Entero
	definir mes Como Caracter
	Escribir "Ingrese 3 numero representatidos a dd, mm, aaaa"
	leer num0, num1, num2
	Segun num1 Hacer
		0, 1:
			mes ="enero"
		2:
			mes= "febrero"
		3:
			mes="marzo"
		4:
			mes = "abril"
		5:
			mes ="mayo"
		6:
			mes = "junio"
		7:
			mes="julio"
		8:
			mes ="agosto"
		9:
			mes="septiembre"
		10:
			mes="octubre"
		11:
			mes= "noviembre"
		12:
			mes="diciembre"
	Fin Segun
	
	si num2>0 Y num2<100 Entonces 
		///control por si no ponen el año completo y ponen lo ultimos dos digitos
		/// ATENCION: los numero en comillas representan caracteres y sin comillas enteros
		///1° a num2 lo convierto en texto 	ConvertirATexto(num2) => ConvertiATexto(21) => "21"
		///2° despues lo concateno			Concatenar("20",ConvertirATexto(21)) => "2021"
		///3° lo vuelvo a convertir en numero para poder almacenarlo en la misma variable ya q solo admite enteros
		///								ConvertirANumero("2021")=> 2021
		num2=ConvertirANumero(Concatenar("20",ConvertirATexto(num2)))
	sino 
		si num2=0 Entonces
			num2=2000 ///determino por defeto q el año es 2000 por los dos ultimos digitos
		FinSi
	FinSi
	si num0 = 0 o num0 > 32 o num0 < 1   entonces
		num0 = 1 /// si el dia esta fuera de rango por defecto lo declaro como 1
	FinSi
	Escribir num0," de ",mes," de ",num2
FinAlgoritmo
