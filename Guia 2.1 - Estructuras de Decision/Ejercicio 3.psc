//Realizar un programa que pida un número al usuario. Si el número es mayor que 100 se
//deberá de imprimir en pantalla "Es Mayor", y en caso contrario se deberá imprimir "Es Menor".

Algoritmo mayo_o_menor
	definir num Como Entero
	Escribir "Ingrese un numero"
	leer num
	si num >100 Entonces ///si num es mayor q 100  muestro "es mayor"
		escribir "Es Mayor"
	sino ///por descarte seria menor
		escribir "Es Menor"
	FinSi
FinAlgoritmo
///este algoritmo tiene un problema es que me dice si el numero es igual a 100, al no ser mayor q 100 me mostrara q es menor.
/// por lo q hice un ejercicio alternativo en el q se contempla esa opcion.