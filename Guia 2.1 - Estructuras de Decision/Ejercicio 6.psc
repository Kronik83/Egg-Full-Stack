//Realizar un programa que pida introducir solo frases o palabras de 6 caracteres. Si el
//usuario ingresa una frase o palabra de 6 caracteres se deberá de imprimir un mensaje
//por pantalla que diga "CORRECTO", en caso contrario, se deberá imprimir
//"INCORRECTO". 

///Nota: investigar la función Longitud() de Pseint.

Algoritmo largo
	definir palabra Como Caracter
	escribir "Ingrese una palabra"
	leer palabra
	///la funcion Logitud cuenta la cantidad de caracteres que hay en la variable palabra
	///esta funcion SOLO FUNCIONA CON VARIABLES CARACTER
	si Longitud(palabra) = 6 Entonces 
		escribir "CORRECTO"   ///si la variable contiene 6  muestra correcto
	SiNo
		escribir "INCORRECTO" /// si es menor o mayor a 6 muesta incorrecto
	FinSi
FinAlgoritmo

///ejemplo
///palabra = "hola Mario"
///longitud(palabra) dara como resultado 10, ya que "hola" cuenta con 5 caracteres + 1 caracter por el espacio + 5 caracteres por "Mario"
///Las letras son caracteres y los signos tambien lo son 
///que pasa si ingreso un espacio o algun signo tambien los cuenta porq estos son caracteres especiales, 
///al igual q a los numeros dentro de una variable caracter.
