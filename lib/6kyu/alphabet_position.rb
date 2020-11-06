def alphabet_position(text)
  return '' if text.match(/[a-zA-Z]/).nil?

  text = text_filter(text)
  hash = convert_to_hash
  text.gsub!(' ', '')
  text = text.split('')
  text.delete(' ')
  result = text.map do |s|
    hash[s] if hash.key? s
  end
  result.join(' ')
end

def text_filter(text)
  text.downcase.scan(/[a-z]/).join('')
end

def convert_to_hash
  alpha = ('a'..'z').to_a
  num = (1..26).to_a
  pair = {}
  alpha.each_with_index do |header, index|
    pair[header] = num[index]
  end
  pair
end
