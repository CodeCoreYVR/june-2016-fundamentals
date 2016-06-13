secret_word = "ruby"

loop do
  print "What is the secret word?"
  user_entry = gets.chomp
  if user_entry == secret_word
    puts "You gussed it!"
    break
  end
end
