//Realizar una funci�n que calcule la suma de los d�gitos de un numero.
///Ejemplo: 25 = 2 + 5 = 7
///Nota: Para obtener el �ltimo numero de un digito de 2 cifras o m�s debemos pensar en 
///	el resto de una divisi�n entre 10. Recordar el uso de la funci�n Mod y Trunc.
Algoritmo sin_titulo
	definir num, numC Como real
	
	Repetir
		borrar pantalla
		Escribir "Ingrese un numero mayor a dos cifras"
		leer num
		numC=longitud(ConvertirATexto(num))
	Mientras Que numC<2
	
	numC=sumarDigitos(num)
	
	Escribir "La suma de los digitos del numero ", num ," es igual a ",numC
	
FinAlgoritmo

funcion retorno <- sumarDigitos(a)
	Definir resto,suma,retorno Como real
	resto=0
	suma=0
	mientras a>= 1 Hacer
		resto = a mod 10
		a =trunc(a/10)
		suma= suma+resto
	FinMientras
	retorno= suma
FinFuncion
	