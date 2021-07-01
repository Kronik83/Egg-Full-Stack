Algoritmo sin_titulo
	definir mat, frase Como Caracter
	definir n como entero
	definir seguir, DP,DS Como Logico
	seguir = Falso
	Escribir "--- Detectar el Gen Z ---"
	Escribir ""
	repetir
		Escribir "Ingrese la cadena para determinar si esta el Gen Z"
		Escribir "Condiciones:"
		Escribir "1- Debe estar fomada por los factores: A,B,C,D, debe al menos tener uno de los factores"
		Escribir "2- Debe tener un largo de 9 , 16 o 1396 caracteres"
		Escribir ""
		Escribir "Ingrese la Cadena" Sin Saltar
		leer frase
		
		n=VerificarFrase(frase)
		si n= 0 Entonces
			Escribir "No cumple la condicion de Logitud, la cadena esta fuera de rango"
			Esperar 2 Segundos
			Borrar Pantalla
			Escribir "--- Arranquemos de nuevo ---"
			Escribir ""
		FinSi
		si n=1 Entonces
			Escribir "Cadena no es aceptada por lo factores, no estan presentes almenos una vez presentes o son erroneos"
			Esperar 2 Segundos
			Borrar Pantalla
			Escribir "Arranquemos de nuevo"
		FinSi
		si n= rc(longitud(frase))
			Borrar Pantalla
			Escribir "Perfecto, la Cadena se acepta para el Analisis"
			esperar 2 segundos
			Borrar Pantalla
			Escribir "Esperando Resultados:"
			esperar 2 segundos
			dimension mat[n, n]
			Carga(mat, n, frase)
			ver(mat,n)
			DP=AnalisisP(mat, n)
			DS=AnalisisS(mat,n)
			AnalisisFinal(DP,DS)
			seguir = Verdadero
		FinSi
	Mientras Que seguir <> Verdadero
FinAlgoritmo
SubProceso AnalisisFinal(a,b)
	Escribir ""
	Escribir "Resultados:"
	Escribir ""
	esperar 2 segundos
	si a= Verdadero y a=b Entonces
		Escribir "Diagonal Principal: Encontrada"
		Esperar 1 Segundos
		Escribir "Diagonal Secundaria: Encontada"
		Escribir " Precencia del -- Gen Z -- "
		esperar 2 Segundos
		Borrar Pantalla
		Escribir "Posible zombie"
		Borrar Pantalla
		esperar 1 Segundos
		Escribir "Ya se convirtio"
		esperar 1 Segundos
		Escribir "a VAKJFSDFBAJBkjsdbf  "
	SiNo
		si a=Verdadero y b=Falso entonces
			Escribir "Diagonal Principal: Encontrada"
			Esperar 1 Segundos
			Escribir "Diagonal Secundaria: No encontada"
			Escribir " No hay precencia del Gen Z"
		sino 
			si a= FAlso y b=Verdadero Entonces
				Escribir "Diagonal Principal: No encontrada"
				Esperar 1 Segundos
				Escribir "Diagonal Secundaria: Encontada"
				Escribir " No hay precencia del Gen Z"
			SiNo
				Escribir "Diagonal Principal: No encontrada"
				Esperar 1 Segundos
				Escribir "Diagonal Secundaria: No encontada"
				Escribir " No hay precencia del Gen Z"
			FinSi
		FinSi
	FinSi
FinSubProceso

funcion ret= AnalisisS(mat,n)
	definir i, aux Como Entero
	definir vec Como Caracter
	definir ret Como Logico
	Dimension vec[n]
	para i= 0 hasta n-1
		vec[i]=mat[i,n-i-1]
	FinPara
	aux=0
	para i =0 hasta n-2
		si vec[i]=vec[i+1] Entonces
			aux= aux+1
		FinSi
	FinPara
	si aux= n-1
		ret=Verdadero
	sino 
		ret= Falso
	FinSi
FinFuncion

funcion ret=AnalisisP(mat,n)
	definir ret Como Logico
	definir i, aux Como Entero
	definir vec Como Caracter
	Dimension vec[n]
	para i= 0 hasta n-1
		vec[i]=mat[i,i]
	FinPara
	aux=0
	para i =0 hasta n-2
		si vec[i]=vec[i+1] Entonces
			aux= aux+1
		FinSi
	FinPara
	si aux= n-1
		ret=Verdadero
	sino 
		ret= Falso
	FinSi
FinFuncion

subproceso Carga(Mat,n,frase)
	definir i,j, aux Como Entero
	definir matAux Como Caracter
	aux =0
	para i=0 hasta n-1
		para j=0 hasta n-1
			mat[i,j] = subcadena(frase,j+aux,j+aux)
		FinPara
		aux =aux +n
	FinPara
FinSubProceso

SubProceso ver(mat,n)
	Definir i,j como entero
	para i= 0 hasta n-1
		para j=0 hasta n-1
			Escribir "[",mat[i,j],"]"Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinSubProceso

funcion ret=VerificarFrase(frase)
	definir long, n, i, a,b,c,d, ret  Como Entero
	long = longitud(frase)
	a=0
	b=0
	c=0
	d=0
	n=0
	si long =9 o long = 16 o long=1369 Entonces
		n=1
		para i = 0 hasta long-1
			segun Subcadena(frase,i,i)
				"a","A":
					a=a+1
				"b","B":
					b=b+1
				"c","C":
					c=c+1
				"d","D":
					d=d+1
				De Otro Modo:
					a=0
					b=0
					c=0
					d=0
			FinSegun
		FinPara
		si a+b+d+c = long y a>0 y b>0 y c>0 y d>0 Entonces
			n=rc(long)
		FinSi
	FinSi
	ret = n
FinFuncion
	