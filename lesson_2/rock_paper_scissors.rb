VALID_CHOICES = %w(rock paper scissors lizard spock)


def prompt(message)
  puts "=> #{message}"
end


def win?(first, second)
  (first == 'rock' &&  second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'rock'  && second == 'lizard') ||
    (first == 'spock' &&  second == 'scissors') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'paper' && second == 'spock')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You won!')
    player_score =+ 1
  elsif win?(computer, player)
    prompt('Computer won!')
    computer_score =+ 1
  else
    prompt('Its a tie!')
  end
end

loop do
  choice = ''
  loop do
  prompt("Choose one: #{VALID_CHOICES.join(' ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt('Thats not a valid choice')
    end
end

computer_choice = VALID_CHOICES.sample
prompt("You chose #{choice}; Computer chose #{computer_choice}")
display_results(choice, computer_choice)

if player_score == 5
  winner = "player"
elsif computer_score == 5
  winner = "computer"
end

if player_score == 5 || computer_score == 5
prompt("The #{winner} won! Do you want to play again?")
answer = gets.chomp
break unless answer.downcase.start_with?('y')
end
prompt('Thank you for playing. Good bye!')

end