// Subalgoritmo  para generar tablero
SubAlgoritmo GenerarTablero ( tablero )
	Definir f,c Como Entero
	Definir filAleatoria,colAleatoria,contador Como Entero
	
	// Posiciones aleatorias para la mosca
	filAleatoria = Aleatorio(0,9)
	colAleatoria = Aleatorio(0,9)
	contador = 0
	
	Para f = 0 Hasta 9 Hacer
		Para c = 0 Hasta 9 Hacer
			tablero[f,c] = '*'
		FinPara
	FinPara
	
	Repetir
		// Posicionamos la mosca en el tablero
		Si (tablero[filAleatoria,filAleatoria] <> "$" Y tablero[filAleatoria,colAleatoria] <> "$") Entonces
			tablero[filAleatoria,colAleatoria] = "$"
		FinSi
		
		filAleatoria = Aleatorio(0,9)
		colAleatoria = Aleatorio(0,9)
		contador = contador + 1
	Hasta Que (contador == 10)
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

Algoritmo TableroUnH
	
	// Tablero con 1 'H' y que se puedan desplazar hacia la derecha/izquierda
	Definir tablero, tableroCopia, direccion Como Caracter
	Definir ruta, columnaAleatoria,filAleatoria,colAleatoria,contador Como Entero
	Dimension tablero[10,10]
	Dimension tableroCopia[10,10]
	
	ruta = Aleatorio(1,9)
	columnaAleatoria = Aleatorio(1,9)
	
	GenerarTablero(tablero)
	
	
	tablero[columnaAleatoria, ruta ] = 'H'
	
	ImprimirTablero(tablero)
	
	Escribir "Muevete en el tablero con <a,s,d,w>: "
	Leer direccion
	
	Repetir
		Esperar 1 Segundos
		Borrar Pantalla
		
//		GenerarTablero(tablero)
		tablero[columnaAleatoria, ruta] = 'H'
		ImprimirTablero(tablero)
		
		Si (direccion == 'a' O direccion == 'A') Entonces
			Borrar Pantalla
			ruta = ruta - 1
//			GenerarTablero(tablero)
			tablero[columnaAleatoria, ruta + 1] = '*'
			tablero[columnaAleatoria, ruta] = 'H'
			ImprimirTablero(tablero)
			
			Escribir "Muevete en el tablero con <a,s,d,w>: "
			Leer direccion
		FinSi

		Si (direccion == 'd' O direccion == 'D') Entonces
			Borrar Pantalla
			ruta = ruta + 1
//			GenerarTablero(tablero)
			tablero[columnaAleatoria, ruta - 1] = '*'
			tablero[columnaAleatoria, ruta] = 'H'
			ImprimirTablero(tablero)
				
			Escribir "Muevete en el tablero con <a,s,d,w>: "
			Leer direccion
		FinSi
		Si (direccion == 's' O direccion == 'S') Entonces
			Borrar Pantalla
			columnaAleatoria = columnaAleatoria - 1
//			GenerarTablero(tablero)
			tablero[columnaAleatoria + 1, ruta] = '*'
			tablero[columnaAleatoria, ruta] = 'H'
			ImprimirTablero(tablero)
			
			Escribir "Muevete en el tablero con <a,s,d,w>: "
			Leer direccion
		FinSi
		
		Si (direccion == 'z' O direccion == 'Z') Entonces
			Borrar Pantalla
			Si (columnaAleatoria >= 9 ) Entonces
				columnaAleatoria = 0
			SiNo
				columnaAleatoria = columnaAleatoria + 1
			FinSi
//			GenerarTablero(tablero)
			Si (columnaAleatoria == 0) Entonces
				tablero[9, ruta] = '*'
			SiNo
				Si(columnaAleatoria > 0) Entonces
					tablero[columnaAleatoria - 1, ruta] = '*'
				FinSi
			FinSi
			tablero[columnaAleatoria, ruta] = 'H'
//			tablero[columnaAleatoria, ruta] = 'H'
			ImprimirTablero(tablero)
			
			Escribir "Muevete en el tablero con <a,s,d,w>: "
			Leer direccion
		FinSi
		
	Hasta Que (tablero[columnaAleatoria, ruta] == "$")
	
	Escribir "FIN DEL JUEGO,CHOCASTE"	
	
FinAlgoritmo
