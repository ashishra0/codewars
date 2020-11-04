require 'pry'

def caeser(message, key)
  codepoints_array = []
  ciphertext = ""

  a_codepoint = 'a'.ord
  alphabets = ("a".."z")

  message.split('').each do |letter|
    if letter =~ /[^a-zA-Z]/
      codepoints_array << letter.bytes.join('').to_i
    else
      shifted_codepoint = letter.downcase.bytes.join('').to_i + key
      codepoints_array << (shifted_codepoint - a_codepoint) % 26 + a_codepoint
    end
  end
  ciphertext = codepoints_array.pack 'C*'
  ciphertext.upcase
end