//Solicitar al usuario que ingrese la base y altura de un rectángulo, y calcular y mostrar por 
//pantalla el área y perímetro del mismo
///area = base * altura 
///perimetro = 2 * altura + 2 * base. tmb perimetro = 2 * (altura+base) se puede llegar a esta opcion por la propiedad distributiva
Algoritmo sin_titulo
	definir a, b como real /// es una unidad de medida por lo q puede llevar decimal
	Escribir "Ingrese la Base y la Altura"
	leer b, a
	Escribir"Area=",b*a
	Escribir "Perimetro=",2*(a+b)
FinAlgoritmo
///tmb podria haber usado 2 variables mas para almacenar los calculos.
///quedando el codigo de esta manera
///definir a,b area,perimetro como real
/// leer a,b
/// area = a*b
/// perimetro =2*(a+b)
///	Escribir"Area=",area
/// Escribir "Perimetro=",perimetro
