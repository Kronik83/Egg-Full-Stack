//Escriba un programa que permita al usuario ingresar el valor de dos variables numéricas 
//de tipo entero. Posteriormente, el programa debe intercambiar los valores de ambas 
//variables y mostrar el resultado final por pantalla. 
//Por ejemplo, si el usuario ingresa los valores num1 = 9 y num2 = 3, la salida a del 
//programa deberá mostrar: num1 = 3 y num2 = 9

///Ayuda: Para intercambiar los valores de dos variables se debe utilizar una variable auxiliar.

Algoritmo sin_titulo
	Definir num1, num2, aux Como Real
	Escribir "Ingrese los numeros num1 y num2"
	leer num1, num2
	Escribir "Ubicacion original"
	Escribir "Num1 =",num1," Num2 =",num2
	aux = num1 ///aux es una variable auxiliar en la que almaceno el valor de num1
	num1 = num2 ///como num1 esta guardado en aux, ahora a num2 lo guardo en num1.
	num2 = aux ///como num2 esta guardado en num1, ahora a num2 le guardo el valor del aux
	escribir "Ubicacion Final"
	Escribir "Num1 =",num1," Num2 =",num2
	
FinAlgoritmo

///explicacion mas detallada

/// num1 = 1
///num2 = 2
///aux = no tiene valor

///Comienza el paso de variables:
///una de las variables debe ser asignada en la variable auxiliar aux
///aux = no tiene valor
///aux = num1 -> al no tener valor ahora guarda el valor de num1
///aux = 1
///num1 =  1, pero ahora le voy a guardar el valor de num2
///num1= num2 -> por lo q el valor de antes se pierde y toma el valor de num2
///num1 = 2
///num2 = 2, pero ahora le voy a guardar el valor de aux
///num2 = aux -> por lo q el valor de antes se pierde y toma el valor de aux
///num2 = 1

/// resultando el cambio de valor
///num1 = 2
///num2 = 1
///aux = 1

///Aclaracion:
///aux no es una variable q se deba mostrar, solo es una variable auxiliar o de ayuda


