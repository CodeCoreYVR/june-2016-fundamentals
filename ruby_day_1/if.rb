print "Give me a number: "
number = gets.to_i

# if expects to be given an expression. The expression should return true or
# false. The code inside the `if` will be executed if the expression returns
# true and the code inside `else` will be executed if the expression returns
# false
# You must at least one 1 `if` you can optionally have one `else`
# you can have as many `elsif` as you'd like
# only one block of code will be executed
if number > 20
  puts "The number is big"
elsif number > 10
  puts "The number is medium"
elsif number > 5
  puts "The number is small to medium"
else
  puts "The number is small"
end
