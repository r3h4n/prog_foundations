statement = "this is a title test"

statement.each_char do |letter| 
  letter[0][1].upcase!
end

puts statement