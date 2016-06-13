# Solution 1
for number in 1..100
  if number % 5 == 0 && number % 3 == 0
    puts "FIZZBUZZ"
  elsif number % 5 == 0
    puts "BUZZ"
  elsif number % 3 == 0
    puts "FIZZ"
  else
    puts number
  end
end

# Solution 2
for i in 1..100
  output = ""
  # if i % 3 == 0
  #   output = output + "FIZZ"
  # end
  output += "FIZZ" if i % 3 == 0
  # if i % 5 == 0
  #   output = output + "BUZZ"
  # end
  output += "BUZZ" if i % 5 == 0
  # output.length > 0 ? puts output : puts i
  if output.length > 0
    puts output
  else
    puts i
  end
end

for i in 1..100
  output = ""
  output += "FIZZ" if i % 3 == 0
  output += "BUZZ" if i % 5 == 0
  output.length > 0 ? puts(output) : puts(i)
end
