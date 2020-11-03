def count_chars(s)
  return {} if s.empty?
  str = s.split("")
  count = Hash[str.collect { |v| [v, 0] }]
  str.each do |char|
    if count.has_key?(char)
      count[char] += 1
    end
  end
  count
end
