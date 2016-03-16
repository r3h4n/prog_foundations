def select_if_fibonnaci(arr)
  fib_numbers = []
  while arr.size > 3 do
    if (arr[0] + arr[1] == arr[2])
     fib_numbers.concat([[arr[0], arr[1], arr[2]]])
      arr.delete_at(0)
      arr.delete_at(0)
      arr.delete_at(0)
    elsif (arr[0] + arr[1] != arr[2])
    arr.delete_at(0)
    end
  end
  fib_numbers
end

result = select_if_fibonnaci([1, 2, 3, 4, 5, 9, 11, 8, 12, 20, 32, 34, 3, 3, 6, 12])
p result