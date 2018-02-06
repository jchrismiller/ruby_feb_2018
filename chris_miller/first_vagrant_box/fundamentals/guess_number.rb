def guess_number (guess)
	number = 25
	return "You guessed it!" unless guess != number
	return "Wrong answer"
end

puts guess_number(22)
puts guess_number(25)