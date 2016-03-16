def generate_ID()
  digit = (0..9).to_a + ('A'..'Z').to_a
  
  counter = 0
  serial = []
  while counter < 36
    counter += 1
    case counter
    when 9
      serial << "-"
    when 14
      serial << "-"
    when 19
      serial << "-"
    when 24
      serial << "-"
    else
    serial << digit.sample  
    end
  end
  serial
end

result = generate_ID()
p result.join("")