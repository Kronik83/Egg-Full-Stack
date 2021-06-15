//Escriba un programa que pida una frase o palabra y valide si la primera letra de esa frase
//es una A. Si la primera letra es una A, se deberá de imprimir un mensaje por pantalla
//que diga "CORRECTO", en caso contrario, se deberá imprimir "INCORRECTO". 

///Nota:investigar la función Subcadena de Pseint. 

///Devuelve una nueva cadena en la cuales el usuario determina la cantidad de caracteres q tomara de la palabra o 
///palabra contenida en una variable.
///la Funcion hace uso de 3 argumentos, 
	///El primero que es la palabra que vamos a analizar
	///El segundo es el valor de inicio, que es desde que caracter dentro de la palabra vamos a tomar
	///y el tercero el el valor final, que es hata el ultimo caracter que se va a tomar.
///Esta funcion la podemos mostrar por pantalla o asignarla a una variable
///Por defecto se toma como primer caracte el numero 0, por lo q si la palabra tiene 4 caracteres el arranca de 0 y termina con el 3

///SOLO SE PUEDE USAR CON CADENA DE CARACTERES O VARIABLES DEFINIDAS COMO CARACTER

///Ejemplo:

/// P E R R O
/// 0 1 2 3 4

/// variable_contenedora = subcadena("perro",0,3)
/// variable_contenedora = "perr"

///otro ejemplo

/// palabra = "contenedor"
/// c o n t e n e d o r
/// 0 1 2 3 4 5 6 7 8 9
///variable_contenedora = subcadena(palabra,3,8)
/// variable_contenedora  = "tenedo"

Algoritmo primer_letra
	definir palabra como cadena
	escribir "Escriba una frase o palabra"
	leer palabra
	///En este caso esto analizando el caracter 0 ela variable palabra, por ello subcadena(palabra,0,0)
	si subcadena(palabra,0,0)=="A" | subcadena(palabra,0,0) =="a" entonces ///uso una condicion doble para que si es la funcion devuelve
																	/// a o A sea verdadero
		escribir "CORRECTO"											/// si es verdadero muesto correcto
	sino 
		escribir "INCORRECTO"											/// si es falso muestro incorrecto
	FinSi
FinAlgoritmo
