puts "Enter number 1:"
number1 = gets.chomp.to_i
puts "Enter number 2:"
number2 = gets.chomp.to_i

puts "Do you want to '(a)dd', '(s)ubtract', '(m)ultiply' or '(d)ivide'?"
operator = gets.chomp

if operator == "a" || operator == "add"
  total = number1 + number2
  sign = "+"
elsif operator == "s" || operator == "subtract"
  total = number1 - number2
  sign = "-"
elsif operator == "m" || operator == "multiply"
  total = number1 * number2 
  sign = "*"
elsif operator == "d" || operator == "divide"
  total = number1 / number2
  sign = "/"
else 
  puts "Invalid input, try again."
end

  puts "#{number1} #{sign} #{number2} is #{total}."
