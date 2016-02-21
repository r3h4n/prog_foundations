statement = "The Flintstones Rock"

results = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
letter_freq = statement.scan(letter).count
results[letter] = letter_freq if letter_freq > 0
end

puts results
