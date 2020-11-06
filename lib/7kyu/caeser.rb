require 'pry'

def caeser(message, key)
  plain = ('A'..'Z').to_a
  cipher = plain.rotate(key)
  message.upcase.tr(plain.join, cipher.join)
end
