def iq_test(numbers)
  numbers = numbers.split(' ').map(&:to_i)
  odd_num = []
  even_num = []
  numbers.each do |num|
    odd_num.push(num) if num.odd?
    even_num.push(num) if num.even?
  end
  if odd_num.length > 1
    numbers.find_index(even_num.first) + 1
  else
    numbers.find_index(odd_num.first) + 1
  end
end
