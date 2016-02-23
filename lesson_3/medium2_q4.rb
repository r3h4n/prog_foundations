sentence = "Humpty Dumpty sat on a wall"

words = sentence.split(' ')
words.reverse!
backwards_sentence = words.join(' ') + '.'

puts backwards_sentence
