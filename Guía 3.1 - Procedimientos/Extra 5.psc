//Dise�ar un procedimiento que reciba una frase, y el programa remueva todas las
//vocales repetidas. Al final el procedimiento mostrar� la frase final.

///Idea de resolucion 
///reecorro una vez la frase para:
///para contar cuantas veces se repite cada vocal
///vuelvo a recorrer la frase Para 
///determinar cuales vocales se repiten.
///y la elimino de la frase
///poor ultimo Imprimo.


Algoritmo sin_titulo
	definir frase Como Caracter
	Escribir "Ingrese una frase o palabra"
	leer frase
	eliminarVocalRepetida(frase)
FinAlgoritmo

SubProceso eliminarVocalRepetida(z)
	definir x,contarA, contarE, contarI, contarO, contarU como entero	
	definir vocal, aux, palabra Como Caracter
	palabra = ""
	contarA=0
	contarE=0
	contarI=0
	contarO=0
	contarU=0
	
	Para x = 0 hasta longitud(z)-1
		vocal  =subcadena(Minusculas(z),x,x)
		segun vocal Hacer
			"a","�":
				contarA=contarA+1
			"e","�":	
				contarE=contarE+1
			"i","�":
				contarI=contarI+1
			"o","�":
				contarO=contarO+1
			"u","�":
				contarU=contarU+1
		FinSegun
	FinPara
	
	para x = 0 hasta longitud(z) -1
		aux = subcadena(z, x,x)
		Segun Minusculas(aux) Hacer
			"a","�":
				si contarA>1 Entonces
					aux=""
				FinSi
			"e","�":
				si contarE>1 Entonces
					aux=""
				FinSi
			"i","�":
				si contarI>1 Entonces
					aux=""
				FinSi
			"o","�":
				si contarO>1 Entonces
					aux=""
				FinSi
			"u","�":
				si contarU>1 Entonces
					aux=""
				FinSi
		Fin Segun
		
		palabra=concatenar(palabra, aux)
		
	FinPara
	Escribir palabra
FinSubProceso

	