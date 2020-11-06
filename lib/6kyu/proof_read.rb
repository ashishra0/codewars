def proof_read(str)
  return str if str.empty?

  arr = str.split('. ')
  arr = arr.map do |word|
    word.downcase.gsub('ie', 'ei').capitalize!
  end
  arr.join('. ')
end
