//Realizar un programa que pida al usuario una frase y una letra a buscar en esa frase. La
//funci�n debe devolver la cantidad de veces que encontr� la letra. Nota: recordar el uso
//de la funci�n Subcadena().
Algoritmo sin_titulo
	definir frase, letra Como Caracter
	definir veces Como Entero
	escribir "ingrese la frase"
	leer frase
	escribir "Ingrese la letra"
	leer letra
	veces= contar(frase,letra)
	escribir "La letra ",letra," se repitio ",veces," veces."
FinAlgoritmo


funcion retorno <- contar (a,b)
	definir i, retorno, contador Como Entero
	definir aux Como Caracter
	contador =0
	para i = 0 hasta longitud(a)-1
		aux = Subcadena(a,i,i)
		si Minusculas(aux) = Minusculas(b) Entonces
			contador = contador +1
		FinSi
	FinPara
	retorno = contador
FinFuncion
