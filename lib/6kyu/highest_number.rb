def highest_rank(arr)
  temp = []
  result = []
  arr.each { |n| temp << arr.count(n) }
  arr.each do |n|
    if arr.count(n) == temp.max
      result << n
    end
  end
  result.max
end