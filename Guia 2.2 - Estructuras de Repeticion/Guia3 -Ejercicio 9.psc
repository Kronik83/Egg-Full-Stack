Algoritmo sin_titulo
	definir i,j , num como entero
	leer num
	para i =1 hasta num Hacer
		si i = 1 o i = num Entonces//i =1 pimer linei=num ultima linea
			para j=1 hasta num Hacer//imprimo desde la letra 1 hasta num *
				si j <> num entonces
					escribir sin saltar "* ";//si j distinto num no hago el salto de linea
				SiNo
					escribir "* "//si j = num hago el salto de linea
				FinSi
			FinPara
		SiNo//i son los valores entre 1 y num
			para j=1 hasta num Hacer
				si j=1 Entonces // j es la primer letra imprimo * sin salto delinea
					escribir sin saltar "* ";
				SiNo
					si j = num Entonces//j es igual a num imprimo * con salto de linea 
						escribir "*"
					sino 
						escribir sin saltar"  "//j esta entre 0 y num imprimo "  "
					FinSi
				FinSi
			FinPara
		FinSi
	FinPara
FinAlgoritmo
