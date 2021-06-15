//Continuando el ejercicio anterior, ahora se pedirá una frase o palabra y se validara si la
//primera letra de la frase es igual a la ultima letra de la frase. Se deberá de imprimir un
//mensaje por pantalla que diga "CORRECTO", en caso contrario, se deberá imprimir "INCORRECTO"

Algoritmo primer
	definir palabra Como Caracter
	definir largo como entero
	Escribir "escriba una frase o palabra"
	leer palabra
	/// Obtengo el largo de la varible de "palabra" contando los caracteres.
	/// le resto 1 para poder usar en la funcion subcadena ya q esta cuenta desde 0 en adelante
	largo = Longitud(palabra)-1
	/// uso dos expresiones para la condicion
	/// la primera es subcadena(palabra,0,0) que obtiene la primer letra
	/// la segunda es subcadena(palabra,largo,largo) que obtiene la ultima letra, donde largo es el valor de la variable
	si subcadena(palabra,0,0) = subcadena(palabra,largo,largo) Entonces /// comparo las dos expresiones
		escribir "VERDADERO"											///si es verdad lo muetro por pantalla con Verdadero
	SiNo
		escribir "FALSO"												///si es falso con "FALSO"
	FinSi

FinAlgoritmo

/// palabra = "neuquen"
///
///largo = Longitud(palabra) -1
///largo = 7-1 => largo = 6
///
/// n e u q u e n
/// 0 1 2 3 4 5 6
///
///subcadena(palabra,0,0) => subcadena("neuquen",0,0)= n
///
///subcadena(palabra, largo, largo) => subcadena("neuquen", 6, 6)=n
///


/// palabra = "pelota"
///
///largo = Longitud(palabra) -1
///largo = 6-1 => largo = 5
///
/// p e l o t a
/// 0 1 2 3 4 5
///
///subcadena(palabra,0,0) => subcadena("pelota",0,0) = p
///
///subcadena(palabra, largo, largo) => subcadena("pelota",5,5) = a
///


