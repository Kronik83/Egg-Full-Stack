//Crea una funci�n EsMultiplo que reciba los dos n�meros pasados por el usuario,
//validando que el primer numero m�ltiplo del segundo y devuelva verdadero si el
//primer numero es m�ltiplo del segundo, sino es m�ltiplo que devuelva falso

Algoritmo sin_titulo
	definir a, b Como Entero	
	definir multi Como Logico
	escribir "ingrese dos numeros"
	leer a,b
	multi = esMultiplo(a,b)
	escribir multi
FinAlgoritmo


funcion retorno <- esMultiplo(a,b)
	definir retorno Como Logico
	
	si  a mod b = 0 Entonces
		retorno=Verdadero
	SiNo
		retorno = Falso
	FinSi
	
FinFuncion
