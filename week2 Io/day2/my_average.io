List myAverage := method(
	if(self size == 0,
		0,
		sum := 0
		self foreach(e,
				if(getSlot("e") isKindOf(Number),
					sum = sum + e,
					Exception raise("Not a Number")
				)
			)

		sum / (self size)
	)
)

list(1, 2, 3) myAverage println
list() myAverage println
list(1, "test", 2) myAverage println