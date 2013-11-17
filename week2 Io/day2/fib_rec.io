cache := Map clone

fib := method(number, 
	if(number == 1 or number == 2, 
		1, 
		cache hasKey((number - 1) asString) ifFalse(
				cache atPut((number - 1) asString, fib(number - 1))
			)
		cache hasKey((number - 2) asString) ifFalse(
				cache atPut((number - 2) asString, fib(number - 2))
			)

		cache at((number - 1) asString) + cache at((number - 2) asString)
	)
)

fib(100) println