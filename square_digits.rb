# squre each didit of a number, concatenate them and return the result as a number
def square_digits(num)
  num.to_s.chars.map { |s| s.to_i ** 2 }.join.to_i
end