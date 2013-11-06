random_number = rand(10)

puts 'Type a freakying number from 0 - 9: '

while (number = gets.to_i) != random_number 
	puts "Try again your number was to #{number > random_number ? :big : :low}"
end

puts 'You got it, gras'

