open util/ordering[GameState] as GO

//represent marks on the board
abstract sig Mark{}
one sig Cross extends Mark{}
one sig Nought extends Mark{}

//represent game state with turn and marks
sig GameState {
	whosTurn: one Mark,
	Board: Space -> lone Mark,
}

//make a bunch of empty spaces
abstract sig Space{}
one sig topLeft extends Space{}
one sig topCenter extends Space{}
one sig topRight extends Space{}
one sig middleLeft extends Space{}
one sig middleCenter extends Space{}
one sig middleRight extends Space{}
one sig bottomLeft extends Space{}
one sig bottomCenter extends Space{}
one sig bottomRight extends Space{}


//check if t won the game
pred GameState.Win[t: Mark] {
	//top row
	(this.Board[topLeft] = t and this.Board[topCenter] = t and this.Board[topRight] = t)
	or
	//middle row
	(this.Board[middleLeft] = t and this.Board[middleCenter] = t and this.Board[middleRight] = t)
	or
	//bottom row
	(this.Board[bottomLeft] = t and this.Board[bottomCenter] = t and this.Board[bottomRight] = t) 
	or
	//left column
	(this.Board[topRight] = t and this.Board[middleRight] = t and this.Board[bottomRight] = t) 
	or
	//center column
	(this.Board[topCenter] = t and this.Board[middleCenter] = t and this.Board[bottomCenter] = t) 
	or
	//right column
	(this.Board[topRight] = t and this.Board[middleRight] = t and this.Board[bottomRight] = t) 
	or
	//forward diagonal
	(this.Board[bottomLeft] = t and this.Board[middleCenter] = t and this.Board[topRight] = t) 
	or
	//back diagonal
	(this.Board[topLeft] = t and this.Board[middleCenter] = t and this.Board[bottomRight] = t)

}

run Win for exactly 1 GameState

//check if the game is a draw
pred GameState.Draw[] {
	//game is actually over
	(
		(this.Board[topLeft] != none) and 
		(this.Board[topCenter] != none) and 
		(this.Board[topLeft] != none) and 
		(this.Board[middleRight] != none) and 
		(this.Board[middleCenter] != none) and 
		(this.Board[middleRight] != none) and 
		(this.Board[bottomLeft] != none) and 
		(this.Board[bottomCenter] != none) and 
		(this.Board[bottomRight] != none) 
	) and 
	//rule out top row
	(this.Board[topLeft] != this.Board[topCenter] or this.Board[topLeft] != this.Board[topRight])
	and
	//rule out middle row
	(this.Board[middleLeft] != this.Board[middleCenter] or this.Board[middleLeft] != this.Board[middleRight])
	and
	//rule out bottom row
	(this.Board[bottomLeft] != this.Board[bottomCenter] or this.Board[bottomLeft] != this.Board[bottomRight])
	and
	//rule out left column
	(this.Board[topLeft] != this.Board[middleLeft] or this.Board[topLeft] != this.Board[bottomLeft])
	and
	//rule out center column
	(this.Board[topCenter] != this.Board[middleCenter] or this.Board[topCenter] != this.Board[bottomCenter]) 
	and
	//rule out right column
	(this.Board[topRight] != this.Board[middleRight] or this.Board[topRight] != this.Board[bottomRight])
	and
	//rule out forward diagonal
	(this.Board[topLeft] != this.Board[middleCenter] or this.Board[topLeft] != this.Board[bottomRight])
	and
	//rule out back diagonal
	(this.Board[bottomLeft] != this.Board[middleCenter] or this.Board[bottomLeft] != this.Board[topRight])
}

run Draw for exactly 1 GameState

fun NextTurn[s: GameState]: Mark {
	Cross = s.whosTurn => Nought
	else
		Cross
}

pred GameState.Init[t: Mark] {
	//empty board
	(this.Board[topLeft] = none) and 
	(this.Board[topCenter] = none) and 
	(this.Board[topLeft] = none) and 
	(this.Board[middleRight] = none) and 
	(this.Board[middleCenter] = none) and 
	(this.Board[middleRight] = none) and 
	(this.Board[bottomLeft] = none) and 
	(this.Board[bottomCenter] = none) and 
	(this.Board[bottomRight] = none) and

	//set first turn
	(this.whosTurn = t)
}

pred Transition[s, s': GameState] {
	//assign next turn
	s'.whosTurn = NextTurn[s] and
	one spc: Space | 
		(s.Board[spc] = none and s'.Board[spc] = s.whosTurn) and
		all spc': Space - spc |
			s'.Board[spc'] = s.Board[spc']
}

run Transition for exactly 2 GameState

fact Traces {
		Init[GO/first[], Cross]
		all g: GameState - GO/last[] | 
			let g' = GO/next[g] |
				Transition[g, g']
}

pred WinTrace {
	Win[GO/last[], Cross] or Win[GO/last[], Nought]
}

pred DrawTrace {
	Draw[GO/last[]]
}

run WinTrace for exactly 6 GameState

run DrawTrace for exactly 10 GameState
