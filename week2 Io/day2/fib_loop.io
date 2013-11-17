fib := method(number,
	if(number == 1 or number == 2,
		1,
		results := list(1, 1)
		for(i, 2, number, 
			results append(results at(i - 1) + results at (i - 2))
		)
		results at(number)
	)
)

fib(100) println