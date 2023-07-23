def encrypt(text, n)
  return text if n == 0 or n < 0
  
  n.times do
    odd = []
    even = []
    text.chars.each_with_index do |t, i|
      i.odd? ? odd << t : even << t
    end
    text = ""
    text = odd.concat(even).join
  end
  
  text
end

def decrypt(encrypted_text, n)
  return encrypted_text if n == 0 || n < 0

  len = encrypted_text.length
  half_len = len / 2

  n.times do
    odd_chars = encrypted_text[half_len..-1]
    even_chars = encrypted_text[0...half_len]
    decrypted_text = ""

    (0...half_len).each do |i|
      decrypted_text << odd_chars[i] << even_chars[i]
    end

    decrypted_text << odd_chars[-1] if len.odd?

    encrypted_text = decrypted_text
  end

  encrypted_text
end
