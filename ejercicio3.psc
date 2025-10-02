Algoritmo ejercicio3
	Definir MAX_DIM Como Entero
	MAX_DIM<-10
	Dimensionar tablero[MAX_DIM, MAX_DIM]
	
	Para fila<-1 Hasta MAX_DIM Hacer
		Para columna<-1 Hasta MAX_DIM Hacer
			tablero[fila,columna] = 'x'
		FinPara
	FinPara
	
	tablero[2,3]='H'
	tablero[5,1]='H'
	tablero[5,10]='H'
	tablero[1,2]='H'
	
	Para fila<-1 Hasta MAX_DIM Hacer
		Para columna<-1 Hasta MAX_DIM Hacer
			Escribir Sin Saltar tablero[fila, columna], " "
		FinPara
		Escribir ""
	FinPara
	
FinAlgoritmo
