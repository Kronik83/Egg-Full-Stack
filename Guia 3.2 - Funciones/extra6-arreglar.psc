//Realizar una función que reciba un numero ingresado por el usuario y averigüe si el 
//número tiene todos sus dígitos impares (ejemplo: 333, 55, etc.). Para esto vamos a tener 
//que separar el numero en partes (si es un numero de más de un digito) y ver si cada
//numero es par o impar. 
///Nota: recordar el uso de la función Mod y Trunc(). No podemos 
///pasar el numero a cadena para realizar el ejercicio
Algoritmo sin_titulo
	definir num Como Entero
	escribir "Ingrese un numero"
	leer num
	num = mostrarNum(num)
FinAlgoritmo

funcion return <- mostrarNum(a)
	definir conti,cont,resto, num,num2, aux,aux2 Como Real
	num = a
	num2 =a
	cont= 0
	mientras a>= 1 Hacer
		cont = cont +1
		resto = a mod 10
		a =trunc(a/10)
		
	FinMientras
	 conti=cont
	Repetir
		si cont= 0 Entonces
			aux=1
		SiNo
			aux=10^cont
		FinSi
		
		aux2=trunc(num/aux)
		num= num/aux - aux2
		num=num*aux
		si aux2<>0  Entonces
			procesoMostrar(aux2)
		FinSi
		cont = cont -1
	Mientras Que cont<>-1
	
FinFuncion


SubProceso procesoMostrar(a)
	si a/2 - trunc(a/2) = 0 Entonces
		Escribir a," es Par "
	SiNo
		Escribir a, " es impar"
	FinSi
FinSubProceso
	