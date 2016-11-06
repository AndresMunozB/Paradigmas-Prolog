mar(~).
lancha(l).
submarino(s).
crucero(c).
destructor(d).
portaviones(p).

caracterValido(X):-
	mar(X);lancha(X);submarino(X);crucero(X);destructor(X);portaviones(X).
barco(X):-
	lancha(X);submarino(X);crucero(X);destructor(X);portaviones(X).


tablero(
    0,6,6,3,
     [6,6,3,3,0,0,
     [[~,l,~,~,c,~],
      [~,~,~,~,c,~],
      [~,s,s,~,c,~],

      [~,c,c,c,~,~],
      [~,~,~,l,s,s],
      [~,~,~,~,~,~]
     ]]
    ).

tablero(
    1,6,6,3,
     [6,6,3,3,0,0,
     [[~,s,s,~,c,~],
      [~,~,l,~,c,~],
      [~,~,~,~,c,~],

      [~,~,~,l,~,~],
      [~,~,s,s,~,~],
      [~,~,c,c,c,~]
     ]]
    ).

tablero(
    2,6,6,3,
     [6,6,3,3,0,0,
     [[~,~,~,~,s,~],
      [~,c,c,c,s,~],
      [~,~,l,~,~,~],

      [~,s,s,~,~,c],
      [~,~,~,l,~,c],
      [~,~,~,~,~,c]
     ]]
    ).

tablero(
    _,10,10,5,
     [10,10,5,5,0,0,
     [[~,p,~,~,~,d,d,d,d,~],
      [~,p,~,~,~,~,s,~,~,c],
      [~,p,~,l,~,~,s,~,~,c],
      [~,p,~,~,~,~,~,~,~,c],
      [~,p,~,~,~,~,~,~,~,~],

      [c,c,c,~,~,p,~,~,~,~],
      [~,~,d,s,s,p,~,~,~,~],
      [~,~,d,~,~,p,~,l,~,~],
      [~,~,d,~,~,p,~,~,~,~],
      [~,~,d,~,~,p,~,~,~,~]
     ]]
    ).
tablero(
    1,10,10,5,
     [10,10,5,5,0,0,
     [[~,~,p,p,p,p,p,~,~,~],
      [~,c,~,~,~,d,~,s,~,~],
      [~,c,~,l,~,d,~,s,~,~],
      [~,c,~,~,~,d,~,~,~,~],
      [~,~,~,~,~,d,~,~,~,~],

      [~,d,d,d,d,~,~,~,~,~],
      [~,~,p,p,p,p,p,l,~,~],
      [~,~,~,~,~,~,c,c,c,~],
      [~,~,~,s,s,~,~,~,~,~],
      [~,~,~,~,~,~,~,~,~,~]
     ]]
    ).

tablero(
    _,20,20,10,
     [20,20,10,10,0,0,
     [[~,~,~,l,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~],
      [~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,p,~],
      [~,~,~,~,~,~,c,c,c,~,~,~,s,s,~,~,~,~,p,~],
      [~,~,~,~,s,s,~,~,~,~,~,~,~,~,~,~,~,~,p,~],
      [~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,d,~,~,p,~],
      [~,~,~,~,d,~,~,~,~,l,~,~,~,~,~,d,~,~,p,~],
      [~,~,~,~,d,~,~,~,~,~,~,~,~,~,~,d,~,~,~,~],
      [~,~,~,~,d,~,~,~,~,c,~,~,~,~,~,d,~,~,~,~],
      [~,~,~,~,d,~,~,~,~,c,~,~,~,~,~,~,~,~,~,~],
      [~,~,~,p,p,p,p,p,~,c,~,~,~,~,~,~,~,~,~,~],

      [~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~],
      [~,~,~,~,l,~,~,~,~,~,~,~,~,~,c,~,~,~,~,~],
      [~,~,~,~,~,~,~,~,~,~,~,~,~,~,c,~,~,~,~,~],
      [~,~,s,~,~,~,~,~,~,s,s,~,~,~,c,~,~,~,~,~],
      [~,~,s,~,~,~,~,~,~,~,~,~,p,~,~,~,~,~,~,~],
      [~,~,~,~,~,~,~,~,~,d,~,~,p,~,~,~,l,~,~,~],
      [~,p,p,p,p,p,~,~,~,d,~,~,p,~,~,~,~,~,~,~],
      [~,~,~,~,~,~,~,~,~,d,~,~,p,~,~,d,d,d,d,~],
      [~,~,c,c,c,~,~,~,~,d,~,~,p,~,~,~,~,~,~,~],
      [~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~,~]
     ]]
    ).
matriz(Matriz,Board):-
	obtenerElementoLista(Board,Matriz,6).
filas(N,Board):-
	obtenerElementoLista(Board,N,0).
columnas(M,Board):-
	obtenerElementoLista(Board,M,1).
barcosUsuario(BU,Board):-
	obtenerElementoLista(Board,BU,2).
barcosCPU(BC,Board):-
	obtenerElementoLista(Board,BC,2).
puntajeUsuario(SU,Board):-
	obtenerElementoLista(Board,SU,4).
puntajeCPU(SC,Board):-
	obtenerElementoLista(Board,SC,5).

% -----------------------------------------------------------------------
show_matriz([]).
show_matriz([C|Co]):-
	print(C),
	nl,
	show_matriz(Co).

% show_matriz(N,M,NumShips,BOARD):-createBoard(N,M,NumShips,BOARD),show_matriz(BOARD).
% eliminar esta cosa parece! ^(arribla)^
% ------------------------------------------------------------------------
%
createBoard(N, M, NumShips, BOARD):-X is random(2),
	tablero(X,N,M,NumShips,BOARD),
	matriz(Matriz,BOARD),
	show_matriz(Matriz),!.




checkBoard(BOARD):-
	contarElementos(BOARD,0,E),
	E = 7,
	%display(E),
	matriz(Matriz,BOARD),
	verificarColumnas(Matriz),
	filas(N,BOARD),
	contarElementos(Matriz,0,N),
	columnas(M,BOARD),
	obtenerElementoLista(Matriz,Fila,0),
	contarElementos(Fila,0,M),
	A is N mod 2,
	A = 0,
	recorrerMatrix(Matriz).






%Regla que cuenta los elementos de una lista cuando N vale 0
contarElementos([],N,N).
contarElementos([_|T],N,N3):- N2 is N+1, contarElementos(T,N2,N3).

%Regla que recorre el tablero verificando si el elemento es un
% caractervalido  o no
recorrerMatrix([]).
recorrerMatrix([F|M]):- filaValida(F),recorrerMatrix(M).

%Recorre una fila verificando elemento por elemento
filaValida([]).
filaValida([C|L]):-
	caracterValido(C),filaValida(L).


%Funcion que retorna la cabeza de una lista (o matriz)
obtenerCabeza([H|_],H).
%Funcion que retorna la cola de una lista (o matriz)
obtenerCola([_|T],T).

obtenerElementoLista([X|_],X,0).
obtenerElementoLista([_|T],Elemento,N):- N2 is N-1,obtenerElementoLista(T,Elemento,N2),!.



verificarColumnas([_|[]]).
verificarColumnas([X,Y|L]):-
	length(X,Len),
	length(Y,Len),
	verificarColumnas([Y|L]),!.






%[coodenadaX,cooredenaY].
posicionValida([X|Y],Board):-
	filas(N,Board),
	X>=0,X<N/2,
	obtenerCabeza(Y,C),
	columnas(M,Board),
	C>=0,C<M.

posicionesValidas([],_):-!.
posicionesValidas([X|Y],Board):-
	posicionValida(X,Board),posicionesValidas(Y,Board).

obtenerElementoBoard(Board,E,X,Y):-
	matriz(Matriz,Board),
	obtenerElementoLista(Matriz,Fila,X),
	obtenerElementoLista(Fila,E,Y).

ataqueEfectivo([[]],_).
ataqueEfectivo([C|Co],Board):-
	obtenerElementoLista(C,E,0),
	obtenerElementoLista(C,E2,1),
	obtenerElementoBoard(Board,Elem,E,E2),
	display(Elem),
	(   barco(Elem)->!;ataqueEfectivo(Co,Board)).


% ------------------------------------------------------------------------

getSubList([_|Y],0,Y).
getSubList([_|Y],POSAUX,OUT):-
	POS is POSAUX-1,
	getSubList(Y,POS,OUT).

mitadUsuario(MatrizMitad,Board):-
	filas(N,Board),
	N1 is N/2-1,
	matriz(Matriz,Board),
	getSubList(Matriz,N1,MatrizMitad).

existeBarco(X,[F|M]):-
	barco(X),
	(   member(X,F)->!;existeBarco(X,M)).

existeBarcoUsuario(X,Board):-
	mitadUsuario(MatrizMitad,Board),
	existeBarco(X,MatrizMitad).




play(BOARD,Ship,Posiciones):-
	checkBoard(BOARD),
	existeBarcoUsuario(Ship,BOARD),
	posicionesValidas(Posiciones,BOARD),
	ataqueEfectivo(Posiciones,BOARD).

boardToString([],'').
boardToString(Board,BoardStr):-
       obtenerCabeza(Board, H), atomic_list_concat(H,'',BoardStr2),atom_concat(BoardStr2,'\n',BoardStr3),
       display(BoardStr3),
       obtenerCola(Board,T), boardToString(T, BoardStr4), atom_concat(BoardStr3,BoardStr4,BoardStr).



contar([],0).
contar([X|Y],N):- caracterValido(X),contar(Y,W),N is W + 1.
contar([_|Y],N):- contar(Y,N).

contarEnMatriz([],0).
contarEnMatriz([X|L],R):-
	contar(X,N),contarEnMatriz(L,Ra),R is Ra+N.
