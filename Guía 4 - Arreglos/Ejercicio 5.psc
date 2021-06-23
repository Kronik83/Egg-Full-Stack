//Realizar un programa con el siguiente menú y le pregunte al usuario que quiere hacer
//hasta que ingrese la opción Salir:
//	a. Llenar Vector A. Este vector es de tamaño N y se debe llenar de manera
//	aleatoria usando la función Aleatorio(valorMin, valorMax) de PseInt.
//	b. Llenar Vector B. Este vector también es de tamaño N y se llena de manera
//	aleatoria.
//	c. Llenar Vector C con la suma de los vectores A y B. La suma se debe realizar
//  elemento a elemento. Ejemplo: C = A + B
//	d. Llenar Vector C con la resta de los vectores B y A. La resta se debe realizar
//  elemento a elemento. Ejemplo: C = B - A
//  e. Mostrar. Esta opción debe permitir al usuario decidir qué vector quiere mostrar:
//	Vector A, B, o C.
//	f. Salir.
///NOTA: El rango de los números aleatorios para los Vectores será de [-100 a 100]. La
///longitud para todos los vectores debe ser la misma, por lo tanto, esa información sólo se
///solicitará una vez.
Algoritmo sin_titulo
	definir i,vector, n, vectorA, vectorB, vectorC, limite Como Entero
	Definir op Como Caracter
	definir A,B,C Como Logico
	limite = 100
	A= Falso
	B=Falso
	C=Falso
	Escribir "Ingrese el Tamaño de los Vectores"
	leer n
	dimension vectorA[n], vectorB[n], vectorC[n]
	repetir
		
		repetir
			Borrar Pantalla
			escribir " --- Menú --- "
			Escribir "a) Llenar el vector A"
			Escribir "b) Llenar el Vector B"
			escribir "c) Mostrar la suma de A Y B"
			escribir "d) Mostrar la restas de B y A"
			Escribir "e) Mostrar vector"
			escribir "f) Salir"
			escribir "Ingrese la Opcion: "Sin Saltar
			leer op
		Mientras Que Minusculas(op) < "a" o Minusculas(op)>"f"
		
		
		segun op
			"a":
				A= Verdadero
				para i=0 hasta n-1
					vectorA[i] = Aleatorio(-limite,limite)
				FinPara
				escribir "Vector A"
				mostrarVector(vectorA,n)
			"b":
				B=Verdadero
				para i = 0 hasta n-1
					vectorB[I] = Aleatorio(-limite, limite)
				FinPara
				Escribir "Vector B"
				mostrarVector(vectorB,n)
			"c":
				si A=Falso o b=Falso Entonces
					Escribir "Primero debe cargar el vector"
					op = "a"
				SiNo
					mostrarVector(vectorA,n)
					escribir "+"
					mostrarVector(vectorB,n)
					para i = 0  hasta n-1
						vectorC[i]= vectorA[i]+vectorB[i]
					FinPara
					Escribir  "="
					mostrarVector(vectorC,n)
					C=Verdadero
				FinSi
				Esperar Tecla
			"d":
				si a =Falso o  b= Falso  Entonces
					escribir "los vectores estan vacios cargarlos antes"
				SiNo
					mostrarVector(vectorB,n)
					Escribir "-"
					mostrarVector(vectorA,n)
					Escribir "="
					para i = 0  hasta n-1
						vectorC[i]= vectorB[i]-vectorA[i]
					FinPara
					 mostrarVector(vectorC,n)
					Esperar Tecla
				FinSi
				Esperar Tecla
			"e":
				repetir
					Borrar Pantalla
					Escribir " --- Menú de Vectores --- "
					Escribir "1) Mostrar Vector A"
					Escribir "2) Mostrar Vector B"
					Escribir "3) Mostrar Vector C"
					escribir "Elegir el Vector: "Sin Saltar
					leer vector
				mientras que vector <1 o vector >3
				segun vector
					1:
						si A=Falso Entonces
							escribir "Primero Cargue el vector"
						SiNo
							escribir "Vector A"
							mostrarVector(vectorA,n)
						FinSi
						Esperar Tecla
					2:
						si B=Falso Entonces
							Escribir "Primero Cargue el vector"
						Sino
							Escribir "Vector B"
							mostrarVector(vectorB,n)
						FinSi
						Esperar Tecla
					3:
						si C=Verdadero
							Escribir "Vector C"
							mostrarVector(vectorC,n)	
						SiNo
							Escribir "Primero se debe caragar el Vector antes"
						FinSi
						esperar Tecla
				FinSegun
				Esperar Tecla
		FinSegun
	mientras que Minusculas(op) <> "f"
FinAlgoritmo

SubProceso mostrarVector(a,b)
	definir i Como Entero
	para i = 0 Hasta b-1
		escribir a[i] ," "sin saltar
	FinPara
FinSubProceso


	