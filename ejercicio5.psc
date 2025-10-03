Algoritmo ejercicio5
	
	Definir MAX_DIM Como Entero
	MAX_DIM<-10
	Dimensionar tablero[MAX_DIM, MAX_DIM]

	
	Para fila<-1 Hasta MAX_DIM Hacer
		Para columna<-1 Hasta MAX_DIM Hacer
			tablero[fila,columna] = 'x'
		FinPara
	FinPara
	
	
	Definir filaAleatoria, columnaAleatoria Como Entero
	
	Para i<-1 Hasta 10 Hacer // Maximo numero de jugadores malos
		Repetir
			filaAleatoria<-Aleatorio(1, MAX_DIM)
			columnaAleatoria<-Aleatorio(1, MAX_DIM)
		Hasta Que tablero[filaAleatoria, columnaAleatoria]<>'H'
		
		tablero[filaAleatoria, columnaAleatoria]='B'
	FinPara
	
	Para fila<-1 Hasta MAX_DIM Hacer
		Para columna<-1 Hasta MAX_DIM Hacer
			Escribir Sin Saltar tablero[fila, columna], " "
		FinPara
		Escribir ""
	FinPara
	
FinAlgoritmo