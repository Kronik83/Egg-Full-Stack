//Crear una funci�n llamada "Login", que recibe un nombre de usuario y una contrase�a 
//y que devuelve Verdadero si el nombre de usuario es "usuario1" y si la contrase�a es 
//"asdasd". Adem�s la funci�n calculara el n�mero de intentos que se ha usado para 
//loguearse, tenemos solo 3 intentos, si nos quedamos sin intentos la funci�n devolver� Falso
Algoritmo sin_titulo
	definir pass, user Como Caracter
	definir log Como Logico
	Escribir "Ingrese user:"Sin Saltar 
	leer user
	Escribir "Ingrese pass:" sin saltar 
	leer pass
	log = login(user, pass)
	Escribir log
	
FinAlgoritmo

funcion resultado <- login(a,b)
	definir resultado Como Logico
	definir i Como Entero
	i=1
	mientras a <> "usuario1" y b <> "asdasd" y i <3 Hacer
		Escribir "Le quedan ",3-i," intentos"
		i=i+1
		Escribir "Ingrese user:"Sin Saltar 
		leer a
		Escribir "Ingrese pass:"Sin Saltar 
		leer b
	FinMientras
	si a  = "usuario1" y b = "asdasd" y i>0 entonces
		resultado = Verdadero
	SiNo
		resultado = Falso
	FinSi
FinFuncion
