def sort_array(source_array)
  return source_array if source_array.empty? or source_array.length == 1

  odd_array = source_array.select(&:odd?).sort
  
  result = source_array.map do |n|
    n.odd? ? odd_array.shift : n
  end
  
  result
end
