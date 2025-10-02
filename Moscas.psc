// Subalgoritmo  para generar tablero
SubAlgoritmo GenerarTablero ( tablero )
	Definir f,c Como Entero
	
	Para f = 0 Hasta 9 Hacer
		Para c = 0 Hasta 9 Hacer
			tablero[f,c] = 'O'
		FinPara
	FinPara
Fin SubAlgoritmo


// Subalgoritmo para mostrar el tablero en la pantalla
SubAlgoritmo ImprimirTablero ( tablero )
	Definir f,c Como Entero
	
	Para f = 0 Hasta 9 Hacer
		Para c = 0 Hasta 9 Hacer
			Escribir tablero[f,c],"  " Sin Saltar
		FinPara
		Escribir "  "
	FinPara
Fin SubAlgoritmo


Algoritmo Moscas
	// Definimos las variables para el tablero
	Definir tablero Como Caracter 
	Definir fila,columna, filaAleatoria, columnaAleatoria como Entero
	Definir posFil,posCol, intentos Como Entero
	Dimension tablero[10,10]
	
	GenerarTablero(tablero) // Generamos el tablero
	
	// Posiciones aleatorias para la mosca
	filaAleatoria = Aleatorio(0,9)
	columnaAleatoria = Aleatorio(0,9)
	
	// Intentos del usuario
	intentos = 0
	
	// Mostramos el tablero
	ImprimirTablero(tablero)
	
	// Posicionamos la mosca en el tablero
	tablero[filaAleatoria,columnaAleatoria] = "*"
	
	// Pedimos la posicion al usuario
	Escribir "Introduce una posicion para encontrar la mosca: "
	Leer posFil, posCol
	Escribir "Chuleta: ",filaAleatoria,columnaAleatoria
	
	// Creamos el bucle para interactuar con el tablero
	Repetir
		Si (tablero[posFil,posCol] <> tablero[filaAleatoria,columnaAleatoria]) Entonces
			Escribir "!Ups¡ No Has Acertado, Inténtalo de Nuevo"
			intentos = intentos + 1
			Esperar 1 Segundos
			Borrar Pantalla
			
			GenerarTablero(tablero)
			ImprimirTablero(tablero)
			tablero[filaAleatoria,columnaAleatoria] = "*"
			Escribir "Introduce una posicion para encontrar la mosca: "
			Leer posFil
			Leer posCol
 		FinSi
	Hasta Que (tablero[posFil,posCol] == tablero[filaAleatoria,columnaAleatoria])
	
	// Validacion en caso de acertar
	Si (tablero[posFil,posCol] == tablero[filaAleatoria,columnaAleatoria]) Entonces
		ImprimirTablero(tablero)
		Escribir ""
		Escribir "¡Felicidades Has Descubierto La Mosca!"
		Escribir "Intentos totales: ",intentos," intentos"
	FinSi
	
FinAlgoritmo
