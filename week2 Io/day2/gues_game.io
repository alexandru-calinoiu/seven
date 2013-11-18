standardIO := File standardInput();

toBeGuessed := Random value(100) asNumber floor
lastGuess := nil

10 repeat(
	"Take your pick of a number between 1 - 100: " println
	guess := standardIO readLine() asNumber();	

	if(guess == toBeGuessed, 
		"You got it cowboy!" println; break,
		if(lastGuess != nil, 
			if((toBeGuessed - lastGuess) abs > (toBeGuessed - guess) abs,
				"Hotter" println,
				"Colder" println
			),
			"Never give up" println			
		)
	)

	lastGuess = guess
)

"The number to be guessed was #{toBeGuessed}" interpolate println
