Algoritmo ejercicio6
	// Tablero con 1 'H' y que se puedan desplazar hacia la derecha/izquierda
	
	Definir MAX_DIM, MAX_JUGADORES Como Entero
	MAX_DIM<-10
	MAX_JUGADORES<-10
	
	Dimensionar tablero[MAX_DIM, MAX_DIM]
	
	// 1. Rellenar la matriz
	Para fila<-1 Hasta MAX_DIM Hacer
		Para columna<-1 Hasta MAX_DIM Hacer
			tablero[fila,columna] = 'x'
		FinPara
	FinPara
	
	Definir filaAleatoria, columnaAleatoria Como Entero
	// 2. Repartir 10 jugadores
	Para i<-1 Hasta MAX_JUGADORES Hacer // Maximo numero de jugadores malos
		Repetir
			filaAleatoria<-Aleatorio(1, MAX_DIM)
			columnaAleatoria<-Aleatorio(1, MAX_DIM)
		Hasta Que tablero[filaAleatoria, columnaAleatoria]<>'B'
		
		tablero[filaAleatoria, columnaAleatoria]='B'
	FinPara
	
	// 3 la H en una posición aleatoria en vez de usar un Leer
	Definir posicion_correcta Como Logico
	Definir colisiones Como Entero
	
	posicion_correcta<-Falso
	colisiones<-0
	
	Mientras no posicion_correcta Hacer
		filaAleatoria<-Aleatorio(1, MAX_DIM)
		columnaAleatoria<-Aleatorio(1, MAX_DIM)
		
		// Comprobar posicion correcta
		Si columnaAleatoria == 1 Entonces // Comprobar derecha
			Si tablero[filaAleatoria, columnaAleatoria]<>'B' y tablero[filaAleatoria, columnaAleatoria+1]<>'B' Entonces
				posicion_correcta = Verdadero
			FinSi
		SiNo 
			Si columnaAleatoria == MAX_DIM Entonces // Comprobar izquierda
				Si tablero[filaAleatoria, columnaAleatoria]<>'B' y tablero[filaAleatoria, columnaAleatoria-1]<>'B' Entonces
					posicion_correcta = Verdadero
				FinSi
			Sino // Comprobar izquierda y derecha
				Si tablero[filaAleatoria, columnaAleatoria]<>'B' y tablero[filaAleatoria, columnaAleatoria-1]<>'B' y tablero[filaAleatoria, columnaAleatoria+1]<>'B' Entonces
					posicion_correcta = Verdadero
				FinSi
			FinSi
		FinSi
		Escribir "Intenta colocar <H> en (", filaAleatoria, ",", columnaAleatoria, ")"
		colisiones<-colisiones+1
	FinMientras
	
	Escribir "<H> en (", filaAleatoria, ",", columnaAleatoria, ")"
	Escribir "Número de colisiones: ", colisiones-1
	tablero[filaAleatoria, columnaAleatoria]='H'
	
	// 4. Mostrar tablero por pantalla
	Para fila<-1 Hasta MAX_DIM Hacer
		Para columna<-1 Hasta MAX_DIM Hacer
			Escribir Sin Saltar tablero[fila, columna], " "
		FinPara
		Escribir ""
	FinPara
	
FinAlgoritmo
