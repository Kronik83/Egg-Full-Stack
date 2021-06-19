Funcion retorno <- suma ( a,b )
	definir retorno como entero
	retorno = a+b
Fin Funcion

//Realizar una función que calcule la suma de dos números. En el algoritmo principal le
//pediremos al usuario los dos números para pasárselos a la función. Después la función
//calculará la suma y lo devolverá para imprimirlo en el algoritmo.

Algoritmo sin_titulo
	definir a, b, resultado Como Entero
	Escribir "Ingrese dos numeros"
	leer a, b
	resultado = suma(a,b)
	imprimir resultado
FinAlgoritmo

