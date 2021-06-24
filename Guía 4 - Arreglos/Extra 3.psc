//Crear dos vectores que tengan el mismo tamaño (el tamaño se pedirá por teclado) y
//almacenar en uno de ellos nombres de personas como cadenas. En el segundo vector
//se debe almacenar la longitud de cada uno de los nombres (para ello puedes usar la
//función Longitud() de PseInt). Mostrar por pantalla cada uno de los nombres junto con su longitud.
Algoritmo sin_titulo
	definir i, n, vecB Como Entero
	definir vecA Como Caracter
	///control q no permite ingresar valores menores a cero
	repetir 
		escribir "Ingrese el tamaño del vector"
		leer n
	Mientras Que n<=0
	///definicion de los vectores con el tamaño ingresado por teclado
	Dimension vecA[n], vecB[n]
	///cara del vector con nombres
	para i=0 hasta n-1
		///control para que no se ingrese datos nulos
		repetir
			escribir "Ingrese el ",i+1,"° Nombre:" Sin Saltar
			leer vecA[i]
		Mientras Que vecA[i] =""
		///carga del vector B con la longitud de los elemento del vector A
		vecB[i]=Longitud(vecA[i])
	FinPara
	Borrar Pantalla
	///llamado al SubProceso que imprime por pantalla la informacion detallada
	mostrarVector(vecA, vecB, n)
	
FinAlgoritmo

SubProceso mostrarVector(a,b,n)
	definir i como entero
	para i = 0 hasta n-1
		///imprime el nombre  y su longitud
		Escribir "Nombre = ",a[i] ," Longitud = ", b[i]
	FinPara
FinSubProceso
	