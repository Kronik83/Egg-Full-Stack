//Crear un programa que dibuje una escalera de n�meros, donde cada l�nea de n�meros
//comience en uno y termine en el n�mero de la l�nea. Solicitar la altura de la escalera al
//usuario al comenzar. Ejemplo: si se ingresa el n�mero 3:
//		1
//		12
//		123
Algoritmo sin_titulo
	definir alto como entero
	Escribir "Ingrese el alto de la escalera"
	leer alto
	dibujarEscalera(alto)
FinAlgoritmo

SubProceso dibujarEscalera(a)
	definir i,j, u Como Entero
	definir aux, aux1  Como Caracter
	para i =1 hasta 1
		para j=1 hasta a 	
			si i =j Entonces
				escribir i
				u=i
			SiNo
				aux1=ConvertirATexto(u)
				aux = concatenar(aux1,ConvertirATexto(j))
				u=ConvertirANumero(aux)
				escribir u
			finsi
		FinPara
	FinPara
	
FinSubProceso
	