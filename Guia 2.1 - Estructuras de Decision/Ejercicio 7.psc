//Realizar un programa que pida una frase o palabra y si la frase o palabra es de 4
//caracteres de largo, el programa le concatenara un signo de exclamación al final, y si no
//es de 4 caracteres el programa le concatenara un signo de interrogación al final. El
//programa mostrará después la frase final. 

///Nota: investigar la función Longitud() y Concatenar() de Pseint.

///La funcion Concatenar(primer_palabra, segunda_palabra), es una funcion que une dos palabras
///para ello, la funcion tiene dos argumentos los cuales son "primer_palabra" y una "segunda_palabra"
///cuando estas dos palabras son asignadas automaticamente la funcion las une devolviendo una sola palabra.
///a esta funcion se le puese asignar una variable definida como cadena, para cada argumento (primer_palabra, segunda_palabra)
///tambien se pueden usa q una argumento sea una palabra definida por el usuario y el otro sea una variable y viceversa


Algoritmo largo_concatena
	
	definir palabra Como Caracter

	escribir "Ingrese una palabra"
	leer palabra							///aqui por teclado le asigno un valor a la variable palabra
	///se condiciona que si la variable "palabra" contiene un conjunto de caracteres con la 
	///cantidad igual a 4, haga lo siguiente:
	///si es verdadero una los caracteres de "palabra" con un signo "!"
	si Longitud(palabra) = 4 Entonces 	 	///longitud(palabra) devuelve un valor x, si este es:
										///verdadero:debe unir el valor de palabra con el signo "!"
		palabra = Concatenar(palabra,"!") 	/// concatenar(palabra,"!") aqui estoy uniendo el valor de la variable palabra y el signo "!"
										/// y lo esoy guardando en la variable palabra, haciendo que el valor original sea 
										///reemplazado por el nuevo
	SiNo
										///al ser falso hago lo mismo que en el caso verdadero solo qe uso el signo "?"
		palabra = Concatenar(palabra,"?")
	FinSi
	escribir palabra						///por ultimo muestro por pantalla el valor de la variable palabra
	
FinAlgoritmo
