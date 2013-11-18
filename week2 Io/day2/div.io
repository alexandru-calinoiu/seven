originDiv := Number getSlot("/")

Number / := method(number,
		if(number == 0,
			0,
			originDiv(number)
		)
	)

(1 / 0) println
(2 / 1) println