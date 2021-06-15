//Escriba un programa que pida 3 notas y valide si esas notas están entre 1 y 10. Si están
//entre esos parámetros se debe poner en verdadero una variable de tipo lógico y si no
//ponerla en falso. Al final el programa debe decir si las 3 notas son correctas usando la
//variable de tipo lógico.

Algoritmo sin_titulo
	definir num0, num1,num2 Como Entero
	definir log Como Logico ///defino una variable logica, estas aceptan unicamente el valor de Verdadero o Falso
	escribir "Ingresar notas:"		///ingreso el valor por teclado de las 3 variables
		leer num0
		leer num1
		leer num2
		///establesco una condicion de expresion combinada
		/// son 3 expresiones combinadas
		///(num0 >=1 y num0 <=10) determino si la variable nom0 esta entre 1 y 10, realice lo mismo para las otras dos variables
		/// y cada expresion deben ser verdaderas para q se cumpla si almenos una no se cumple entonces es falsa
		si (num0 >=1 y num0 <=10) y (num1 >=1 y num1<=10) y (num2>=1 y  num2<=10) Entonces
			log = Verdadero 		///si la condicione se cumple, a la variable log le asigno el valor de Verdadero
		SiNo
			log = Falso			/// sino el valor de Falso
		FinSi
		
		si log = Verdadero Entonces 	///por ultimo analizo si la varable log es verdadera o falsa
			Escribir "Los numeros estan entre 1 y 10" ///si es verdadera muestro la leyenda expresada en el escribir por pantalla 
		SiNo
			escribir "Alguno o todos los numeron no se encuentra entre 1 y 10" ///sino muestro esta otra leyenda
		FinSi
	
FinAlgoritmo
