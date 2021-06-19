//Crea una función EsMultiplo que reciba los dos números pasados por el usuario,
//validando que el primer numero múltiplo del segundo y devuelva verdadero si el
//primer numero es múltiplo del segundo, sino es múltiplo que devuelva falso

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
