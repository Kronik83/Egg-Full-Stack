//Conocido el número en matemática PI ?, pedir al usuario que ingrese el valor del radio 
//de una circunferencia y calcular y mostrar por pantalla el área y perímetro. Recuerde que 
//para calcular el área y el perímetro se utilizan las siguientes fórmulas:
		//area = PI * radio2 
		//perimetro = 2 * PI * radio
Algoritmo sin_titulo
	definir perimetro, radio, area Como Real ///todas las variables las defini como real ya que pueden ser numeros decimales
	escribir "Ingrese el valor del radio"
	leer radio
	///perimetro y area son variables contenedoras de los calculos pueden ir como no, 
	///como en el Ejercicio 2 - alternativa
	perimetro = 2 * PI * radio  
	area = PI * radio^2
	
	Escribir "Perimetro = ",perimetro
	Escribir "Area = ",area
	
FinAlgoritmo
///PI ya esta definido internamente en el programa, no hace falta definirla.