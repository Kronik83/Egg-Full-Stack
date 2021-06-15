//Hacer un algoritmo que lea un número por el teclado y determine si tiene tres dígitos
Algoritmo sin_titulo
	definir num Como Entero
	leer num 
	num=Longitud(ConvertirATexto(num))//primero convierto a texto el numero para depues contar los digitos
	escribir "Cantida de digitos: ",num
FinAlgoritmo


///Ejemplo
///num = 350
///1° Convierto a Cadena o Texto el numero 
///ConvertirATexto(350)=>"350"
///2° calculo su longitud
///Longitu("350")=>3
///num = 3 a la variable num le cambio el valor a 3
/// entonces el numero tiene 3 digitos
