//Teniendo en cuenta que la clave es "eureka", escribir un programa que nos pida ingresar 
//una clave. Sólo se cuenta con 3 intentos para acertar, si fallamos los 3 intentos se deberá 
//mostrar un mensaje indicándonos que hemos agotado esos 3 intentos. Si acertamos la 
//clave se deberá mostrar un mensaje que indique que se ha ingresado al sistema correctamente.
Algoritmo sin_titulo
	definir clave, leyenda Como Caracter
	definir i Como Entero
	
	i=0
	clave=""
	
	mientras clave <> "eureka" y i <3 Hacer
		Escribir "Tiene ",3-i," intentos"
		i=i+1
		leer clave
	FinMientras
	si clave ="eureka" y i>0 entonces
		escribir "Ingreso correctamente"
	SiNo
		escribir "No ingreso la clave correcta"
	FinSi
	
	
FinAlgoritmo
