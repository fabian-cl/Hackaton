Algoritmo ejercicio2
	
	Definir MAX_DIM Como Entero
	MAX_DIM<-10
	
	Definir tablero Como Caracter
	Dimensionar tablero[MAX_DIM,MAX_DIM]
	
	Para fila<-1 Hasta MAX_DIM Hacer
		Para columna<-1 Hasta MAX_DIM Hacer
			tablero[fila, columna] = 'X'
		FinPara
	FinPara
	
	tablero[2,5]='H'
	
	Para fila<-1 Hasta MAX_DIM Hacer
		Para columna<-1 Hasta MAX_DIM Hacer
			Escribir Sin Saltar tablero[fila, columna], " "
		FinPara
		Escribir ""
	FinPara
	
FinAlgoritmo
