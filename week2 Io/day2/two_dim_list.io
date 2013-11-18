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

MyList transpose := method(
	result := MyList clone
	result dim(self size, self first size)
	for(i, 0, (self size) - 1, 
		for(j, 0, (at(i) size) - 1,
			result set(i, j, get(j, i))
		)
	)
	result
)

list = MyList clone

list dim(10, 2)
list set(1, 0, 42)

list println
list get(1, 0) println
list transpose println