Algoritmo sin_titulo
	
	Definir MAX_DIM Como Entero
	MAX_DIM<-10
	Dimensionar tablero[MAX_DIM, MAX_DIM]
	Dimensionar vector[MAX_DIM]
	
	Para fila<-1 Hasta MAX_DIM Hacer
		Para columna<-1 Hasta MAX_DIM Hacer
			tablero[fila,columna] = 'x'
			//Escribir fila, " ", columna
		FinPara
	FinPara
	
	
	//Definir filaAleatoria, columnaAleatoria Como Entero
	//filaAleatoria<-Aleatorio(1, MAX_DIM)
	//columnaAleatoria<-Aleatorio(1, MAX_DIM)
	//tablero[filaAleatoria, columnaAleatoria]<-'H'
	Definir filaUsuario, columnaUsuario Como Entero
	
	Escribir "Necesito una fila"
	Repetir
		Escribir "Dame un numero del 1 al 10"
		Leer filaUsuario
	Hasta Que filaUsuario <= MAX_DIM
	
	Escribir "Necesito una columna"
	Repetir
		Escribir "Dame un numero del 1 al 10"
		Leer columnaUsuario
	Hasta Que columnaUsuario <= MAX_DIM
	
	tablero[filaUsuario, columnaUsuario]<-'H'
	
	
	Para fila<-1 Hasta MAX_DIM Hacer
		Para columna<-1 Hasta MAX_DIM Hacer
			Escribir Sin Saltar tablero[fila, columna], " "
		FinPara
		Escribir ""
	FinPara
	
FinAlgoritmo
