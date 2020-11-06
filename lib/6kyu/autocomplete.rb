def autocomplete(input, dictionary)
  input = input.scan(/[A-Za-z]/i).join
  matches = []
  default = dictionary.first(5)
  dictionary.each do |word|
    matches.push(word) if word.downcase.start_with?(input) && !input.empty?
  end
  return default if input.empty?

  matches.take(5)
end
