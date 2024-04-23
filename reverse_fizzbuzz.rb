def reverse_fizzbuzz(s)
  solution = []
  fizz_buzz_arr = s.split(' ')
  current_fizz_buzz = []
  n = 1

  until current_fizz_buzz == fizz_buzz_arr
    if n % 3 == 0 && n % 5 == 0
      current_fizz_buzz << 'FizzBuzz'
    elsif n % 3 == 0
      current_fizz_buzz << 'Fizz'
    elsif n % 5 == 0
      current_fizz_buzz << 'Buzz'
    else
      current_fizz_buzz << n.to_s
    end

    solution << n

    current_fizz_buzz.shift if current_fizz_buzz.length > fizz_buzz_arr.length
    solution.shift if solution.length > fizz_buzz_arr.length
    n += 1
  end
    
  solution
end
