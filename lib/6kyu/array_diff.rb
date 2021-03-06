# Your goal in this kata is to implement a difference function
# which subtracts one list from another and returns the result.

# It should remove all values from list a, which are present in list b.

def array_diff(one, two)
  result = []
  one.each do |item|
    result << item unless two.include? item
  end
  result
end
