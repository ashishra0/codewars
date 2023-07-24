def sort_array(source_array)
  return source_array if source_array.empty? || (source_array.length == 1)

  odd_array = source_array.select(&:odd?).sort

  source_array.map do |n|
    n.odd? ? odd_array.shift : n
  end
end
