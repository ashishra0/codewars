def alphabet_position(text)
  if text.match(/[a-zA-Z]/).nil?
    return ""
  end
  text = text_filter(text)
  hash = convert_to_hash
  text.gsub!(" ", "")
  text = text.split("")
  text.delete(" ")
  result = text.map do |s|
    if hash.has_key? s
      s = hash[s]
    end
  end
  result.join(" ")
end

def text_filter(text)
  text.downcase.scan(/[a-z]/).join("")
end

def convert_to_hash
  alpha = ("a".."z").to_a
  num = (1..26).to_a
  pair = Hash.new
  alpha.each_with_index do |header, index|
    pair[header] = num[index]
  end
  pair
end