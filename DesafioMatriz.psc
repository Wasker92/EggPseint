//Aqui arrancamos inicializando una matriz vac�a, para despues llenarla con las palabras.
//En vez de arrancarla con un * lo hacemos con un _
SubProceso iniciarMatriz(m, f, c)
	Definir i, j Como Entero
	Para i = 0 Hasta f - 1
		Para j = 0 Hasta c - 1
			m[i,j] = "_"
		FinPara
	FinPara	
FinSubProceso

//Aqui solo iniciamos el subproceso para mostrar por pantalla la matriz.
SubProceso mostrarMatriz(m, f, c)
	Definir i, j Como Entero
	Para i = 0 Hasta f - 1
		Para j = 0 Hasta c - 1
			Escribir Sin Saltar " ", m[i,j], " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

//Aqui desarmamos las palabras y las acomodamos caracter por caracter en los espacios de la matriz.
SubProceso agregarPalabra(m, p, f)
	Definir i Como Entero
	Para i = 0 Hasta (Longitud(p) - 1)
		m[f,i] = Mayusculas(Subcadena(p, i, i))
	FinPara
FinSubProceso

//Aqui armamos una funcion para que busque la primera letra R de la palabra
//Y nos devuelva la posicion de la misma.
Funcion retorno = buscarR(m, f)
	Definir retorno, i Como Entero
	retorno = 0
	Para i = 0 Hasta 11
		Si m[f,i] == 'R'
			retorno = i
			i = 11
		FinSi
	FinPara
FinFuncion

//Aqui armamos el subproceso para reacomodar las palabras alineando la primera R.
SubProceso acomodarPalabra(m)
	Definir i, j, k, pos Como Entero
	Para i = 0 Hasta 8
		pos = buscarR(m ,i)
		Si pos <> 5
			Para k = 1 Hasta (5 - pos)
				Para j = 11 Hasta 1
					m[i,j] = m[i,(j-1)]
				FinPara
			FinPara
			Para k = 0 Hasta ( 5 - pos - 1)
				m[i,k] = "_"
			FinPara
		FinSi
	FinPara
FinSubProceso


Algoritmo desafioMatrices
	Definir matriz como Caracter
	Dimension matriz[9,12]
	
	iniciarMatriz(matriz, 9, 12)
	
	agregarPalabra(matriz, "vector", 0)
	agregarPalabra(matriz, "matrix", 1)
	agregarPalabra(matriz, "programa", 2)
	agregarPalabra(matriz, "subprograma", 3)
	agregarPalabra(matriz, "subproceso", 4)
	agregarPalabra(matriz, "variable", 5)
	agregarPalabra(matriz, "entero", 6)
	agregarPalabra(matriz, "para", 7)
	agregarPalabra(matriz, "mientras", 8)
	
	mostrarMatriz(matriz, 9, 12)
	Escribir ""
	acomodarPalabra(matriz)
	Escribir ""
	mostrarMatriz(matriz, 9, 12)
FinAlgoritmo
