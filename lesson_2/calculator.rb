def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when 'a'
    'Adding'
  when 's'
    'Subtracting'
  when 'm'
    'Multiplying'
  when 'd'
    'Dividing'
  end
end

puts "Welcome to Calculator! Enter your name:"

loop do
  number1 = ''
loop do
puts "Enter number 1:"
number1 = gets.chomp.to_i
if valid_number?(number1)
  break
else
  puts "Invalid input, try again."
end
end

number2 = ''
loop do
puts "Enter number 2:"
number2 = gets.chomp.to_i
if valid_number?(number2)
  break
else
    puts "Invalid input, try again."
end
end

operator_prompt = <<-MSG
What operation would you like to perform?
(a)dd
(s)ubtract
(m)ultiply
(d)ivide
MSG

puts operator_prompt
operator = ''
loop do
operator = gets.chomp

if %w(a s m d).include?(operator)
  
  break
else
  puts "Must choose a s m d"
end
end

puts ("#{operation_to_message(operator)} the two numbers...")

result = case operator
when "a" || "add"
  number1.to_i + number2.to_i
when "s" || "subtract"
  number1.to_i - number2.to_i
when "m" || "multiply"
  number1.to_i * number2.to_i 
when "d" || "divide"
  number1.to_f / number2.to_f
end

  puts "The total is #{result}."
  
  puts "Do you want to perform another calculation? (Y to go again)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y') 
  end