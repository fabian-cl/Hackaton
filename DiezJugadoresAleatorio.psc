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


Algoritmo DiezJugadoresAleatorio
	// Definimos las variables para el tablero
	Definir tablero Como Caracter 
	Definir contador, fila,columna, filaAleatoria, columnaAleatoria como Entero
	Dimension tablero[10,10]
	
	GenerarTablero(tablero) // Generamos el tablero
	
	// Mostramos el tablero
	ImprimirTablero(tablero)
	
	// Posiciones aleatorias para la mosca
	filaAleatoria = Aleatorio(0,9)
	columnaAleatoria = Aleatorio(0,9)
	contador = 0
	
	Repetir
		// Posicionamos la mosca en el tablero
		Si (tablero[filaAleatoria,columnaAleatoria] <> "$") Entonces
			tablero[filaAleatoria,columnaAleatoria] = "$"
			Esperar 1200 Milisegundos
			Borrar Pantalla
			ImprimirTablero(tablero)
		FinSi
		
		filaAleatoria = Aleatorio(0,9)
		columnaAleatoria = Aleatorio(0,9)
		contador = contador + 1
	Hasta Que (contador == 10)
FinAlgoritmo
