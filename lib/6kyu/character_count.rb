def count_chars(string)
  return {} if string.empty?

  str = string.split('')
  count = Hash[str.collect { |v| [v, 0] }]
  str.each do |char|
    count[char] += 1 if count.key?(char)
  end
  count
end
