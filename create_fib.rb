def fibonacci_sequence(max_num)
  sequence = [1, 2]
  loop do
    fibonacci = sequence[-2] + sequence[-1]
    break if fibonacci >= max_num
    sequence << fibonacci
  end
  sequence
end

def select_if_fibonnaci(fib_numbers, arr)
  result = fib_numbers&arr
end

arr = [1,3,45,54,8,5,44,34,66,44,21,68,55]
fib_numbers = fibonacci_sequence(arr.max)

final = select_if_fibonnaci(fib_numbers, arr)
p final