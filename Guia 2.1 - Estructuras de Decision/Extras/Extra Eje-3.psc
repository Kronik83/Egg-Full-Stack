//Solicitar al usuario que ingrese dos n�meros enteros y determinar si ambos son pares o
//impares. Mostrar en pantalla un mensaje que indique "Ambos n�meros son pares"
//siempre y cuando cumplan con la condici�n. En caso contrario se deber� imprimir el
//siguiente mensaje "Los n�meros no son pares, o uno de ellos no es par".
//Nota: investigar la funci�n mod de Pseint. 
Algoritmo sin_titulo
	definir num0, num1 como entero
	Escribir "Ingrese los n�menos"
	leer num0, num1
	/// primer condicion si (es par y no es par) o (no es par o es par) 
	si (num0 mod 2 = 0 y num1 mod 2 <> 0) o (num0 mod 2 <> 0 y num1 mod 2 =0) Entonces
		escribir "Uno de ellos no es par" ///si se cumple alguna de las dos 
	sino ///ninguna se cumple
		si (num0 mod 2 =0 y num1 mod 2 =0) Entonces 
			Escribir "Ambos n�meros son pares" ///si ambos son pares
		SiNo
			escribir "Ambos n�meros son impares" ///si ambos son impares
		FinSi
	FinSi
FinAlgoritmo


/// num0 = 8
/// num1= 1
///	(8 mod 2 = 0 y 1 mod 2 <> 0) o (8 mod 2 <> 0 y 1 mod 2 =0) 
///  (V y  V) o (F y F) => V o F => V alguno es impar

/// num0 = 1
/// num1= 8
///	(1 mod 2 = 0 y 8 mod 2 <> 0) o (1 mod 2 <> 0 y 8 mod 2 =0) 
///  (F y  F) o ( V y V) => F o V => V alguno es impar


///num0 = 2 y num1 = 4
/// (2 mod 2 = 0 y 4 mod 2 <>0) o (2 mod 2 <> 0 y 4 mod 2 =0)
///(V y F) o (F y V) => F o F => F
///si (num0 mod 2 =0 y num1 mod 2 =0) 
/// (2 mod 2 = 0) y (4 mod 2 = 0)
///  V y V => V ambos pares

///num0=1 y num1 =3
/// (1 mod 2 = 0 y 3 mod 2 <>0) o (1 mod 2 <> 0 y 3 mod 2 =0)
///(F y F) o (F y F) => F o F => F
///si (num0 mod 2 =0 y num1 mod 2 =0) 
/// (1 mod 2 = 0) y (3 mod 2 = 0)
///  F y F => F ambos impares


