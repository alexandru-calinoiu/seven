MyList := List clone

MyList dim := method(numx, numy, 
	x := list()
	numx repeat(x append(0))
	numy repeat(append(x clone))
)

MyList set := method(x, y, value,
	at(y) atPut(x, value)
)

MyList get := method(x, y,
	at(y) at(x)
)

list = MyList clone

list dim(10, 2)
list set(1, 0, 42)

list println
list get(1, 0) println