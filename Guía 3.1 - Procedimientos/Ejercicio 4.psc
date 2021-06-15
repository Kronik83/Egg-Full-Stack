//Escribir un programa que procese una secuencia de caracteres ingresada por teclado
//y terminada en punto, y luego codifique la palabra o frase ingresada de la siguiente
//manera: cada vocal se reemplaza por el car�cter que se indica en la tabla y el resto de
//	los caracteres (incluyendo a las vocales acentuadas) se mantienen sin cambios.
//	a e i o u
//	@ # $ % *
//	Realice un subprograma que reciba una secuencia de caracteres y retorne la
//	codificaci�n correspondiente. Utilice la estructura "seg�n" para la transformaci�n.
//	Por ejemplo, si el usuario ingresa: Ayer, lunes, salimos a las once y 10.
//		La salida del programa deber�a ser: @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10.
///		NOTA: investigue el uso de la funci�n concatenar de PSeInt para armar la palabra/frase.
Algoritmo sin_titulo
	definir palabra Como Caracter
	Escribir "Ingrese una palabra"
	leer palabra
	codificacion(palabra)
FinAlgoritmo

subproceso codificacion(a)
	definir largo,i como entero
	definir aux, palabra Como Caracter
	palabra =""
	largo=Longitud(a)
	
	para i =0 hasta largo -1
		aux = subcadena(a, i,i)
		Segun Minusculas(aux) Hacer
			"a","�":
				aux="@"
			"e","�":
				aux="#"
			"i","�":
				aux="$"
			"o","�":
				aux="%"
			"u","�":
				aux = "*"
		Fin Segun
		
		palabra=concatenar(palabra, aux)
		
	FinPara
	Escribir palabra
FinSubProceso
