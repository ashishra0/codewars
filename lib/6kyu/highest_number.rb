def highest_rank(arr)
  temp = []
  result = []
  arr.each do |n|
    temp << arr.count(n)
    result << n if arr.count(n) == temp.max
  end
  result.max
end
