=begin
Take everything you've learned so far and build
a mortgage calculator (or car payment calculator -- it's the same thing).

You'll need three pieces of information:

the loan amount
the Annual Percentage Rate (APR)
the loan duration

From the above, you'll need to calculate the following two things:

monthly interest rate
loan duration in months
You can then use the formula described here: http://www.mtgprofessor.com/formulas.htm

Finally, don't forget to run your code through Rubocop.
=end

def valid_number?(num)
  num.to_i.to_s == num
end

loan_amount = ""
loop do
puts "What is the loan amount?"
loan_amount = gets.chomp
if 
  valid_number?(loan_amount)
  break
   else 
  puts "Invalid entry, you must enter a number" 
end
end

apr = ""
loop do
puts "What is the APR (Annual Percentage Rate)?"
apr  = gets.chomp
if
  valid_number?(apr)
  break
else
    puts "Invalid entry, you must enter a number" 
end
end

duration_years = ""
loop do
puts "What is the duration of the loan? (in years)"
duration_years = gets.chomp
if
  valid_number?(duration_years)
  break
else
    puts "Invalid entry, you must enter a number" 
end
end

annual_rate = apr.to_f / 100
c = annual_rate / 12
n = duration_years.to_i * 12

P = loan_amount.to_f*(c / (1 - (1 + c)**-n.to_i))
puts "Your monthly payment is #{format('%.2f', P)}"
