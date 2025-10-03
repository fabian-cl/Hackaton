Algoritmo ejercicio8
	// Tablero con 1 'H' y que se puedan desplazar hacia la derecha/izquierda
	
	Definir MAX_DIM, MAX_JUGADORES, MAX_MUROS Como Entero
	MAX_DIM<-10
	MAX_JUGADORES<-10
	MAX_MUROS<-10
	
	Definir JUGADOR, MURO, VACIO, CASILLA_H Como Caracter
	JUGADOR<-'B'
	MURO<-'O'
	VACIO <- 'X' 
	CASILLA_H<-'H'
	
	Definir contador Como Entero
	contador<-0
	
	Dimensionar tablero[MAX_DIM, MAX_DIM]
	
	// 1. Rellenar la matriz
	Para fila<-1 Hasta MAX_DIM Hacer
		Para columna<-1 Hasta MAX_DIM Hacer
			tablero[fila,columna] = VACIO
		FinPara
	FinPara
	
	// 2. Repartir muros
	Definir filaAleatoria, columnaAleatoria Como Entero
	Para i<-1 Hasta MAX_MUROS Hacer // Maximo numero de jugadores malos
		Repetir
			filaAleatoria<-Aleatorio(1, MAX_DIM)
			columnaAleatoria<-Aleatorio(1, MAX_DIM)
			Escribir "Se va a intentar colocar muro en (", filaAleatoria, ",", columnaAleatoria, ")"
			contador<-contador+1
		Hasta Que tablero[filaAleatoria, columnaAleatoria]<>MURO
		
		Escribir "Muro ", i " en la casilla (", filaAleatoria, ",", columnaAleatoria, ")"
		tablero[filaAleatoria, columnaAleatoria]=MURO
	FinPara
	
	// 3. Repartir 10 jugadores
	Para i<-1 Hasta MAX_JUGADORES Hacer // Maximo numero de jugadores malos
		Repetir
			filaAleatoria<-Aleatorio(1, MAX_DIM)
			columnaAleatoria<-Aleatorio(1, MAX_DIM)
			Escribir "Se va a intentar colocar jugador en en (", filaAleatoria, ",", columnaAleatoria, ")"
			contador<-contador+1
		Hasta Que (tablero[filaAleatoria, columnaAleatoria]<>JUGADOR y tablero[filaAleatoria, columnaAleatoria]<>MURO)
		
		Escribir "Jugador ", i " en la casilla (", filaAleatoria, ",", columnaAleatoria, ")"
		tablero[filaAleatoria, columnaAleatoria]=JUGADOR
	FinPara
	
	// 4. La H en una posición aleatoria en vez de usar un Leer
	Definir posicion_correcta Como Logico
	Definir colisiones Como Entero
	
	posicion_correcta<-Falso
	colisiones<-0
	
	Mientras no posicion_correcta Hacer
		filaAleatoria<-Aleatorio(1, MAX_DIM)
		columnaAleatoria<-Aleatorio(1, MAX_DIM)
		
		// Comprobar posicion correcta
		Si columnaAleatoria == 1 Entonces // Comprobar derecha
			Si tablero[filaAleatoria, columnaAleatoria]<>JUGADOR y tablero[filaAleatoria, columnaAleatoria+1]<>JUGADOR y tablero[filaAleatoria, columnaAleatoria]<>MURO y tablero[filaAleatoria, columnaAleatoria+1]<>MURO Entonces
				posicion_correcta = Verdadero
			FinSi
		SiNo 
			Si columnaAleatoria == MAX_DIM Entonces // Comprobar izquierda
				Si tablero[filaAleatoria, columnaAleatoria]<>JUGADOR y tablero[filaAleatoria, columnaAleatoria-1]<>JUGADOR y tablero[filaAleatoria, columnaAleatoria]<>MURO y tablero[filaAleatoria, columnaAleatoria-1]<>MURO Entonces
					posicion_correcta = Verdadero
				FinSi
			Sino // Comprobar izquierda y derecha
				Si (tablero[filaAleatoria, columnaAleatoria]<>JUGADOR y tablero[filaAleatoria, columnaAleatoria-1]<>JUGADOR y tablero[filaAleatoria, columnaAleatoria+1]<>JUGADOR y tablero[filaAleatoria, columnaAleatoria]<>MURO y tablero[filaAleatoria, columnaAleatoria-1]<>MURO y tablero[filaAleatoria, columnaAleatoria+1]<>MURO) Entonces
					posicion_correcta = Verdadero
				FinSi
			FinSi
		FinSi
		Escribir "Intenta colocar <H> en (", filaAleatoria, ",", columnaAleatoria, ")"
		
		contador<-contador+1
		colisiones<-colisiones+1
	FinMientras
	
	Escribir "<H> en (", filaAleatoria, ",", columnaAleatoria, ")"
	tablero[filaAleatoria, columnaAleatoria]=CASILLA_H
	
	Escribir "Número de colisiones: ", colisiones-1
	Escribir "Contador de ejecuciones: ", contador - MAX_JUGADORES - MAX_MUROS - colisiones
	
	// 5. Mostrar tablero por pantalla
	Para fila<-1 Hasta MAX_DIM Hacer
		Para columna<-1 Hasta MAX_DIM Hacer
			Escribir Sin Saltar tablero[fila, columna], " "
		FinPara
		Escribir ""
	FinPara
	
FinAlgoritmo
