secret_number     = rand(25)

number_of_guesses = 1

loop do
  print "What is your guess? "
  guess_number = gets.to_i
  if guess_number > secret_number
    puts "Lower"
  elsif guess_number < secret_number
    puts "Higher"
  else
    puts "You guessed it, it took you #{number_of_guesses} guesses"
    break
  end
  number_of_guesses += 1
end
