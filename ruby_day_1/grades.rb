print "What was your exam score(0-100)? "
score = gets.to_i

if score > 100 || score < 0
  puts "Please enter a number between 0 and 100"
elsif score > 85
  puts "You got an A"
elsif score > 70
  puts "You got a B"
elsif score > 60
  puts "You got a C"
elsif score > 50
  puts "You got a D"
else
  puts "You got an F"
end
