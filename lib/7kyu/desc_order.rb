# Descending Order
# problem statement: make a function that can take any non-negative integer as a argument and
# return it with its digits in descending order.
# Essentially, rearrange the digits to create the highest possible number.

class Descending
  def descending_order(num)
    num.to_s.split('').sort.reverse.join('').to_i
  end
end
