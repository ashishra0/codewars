# The goal of this exercise is to convert a string to a new string 
# where each character in the new string is "(" 
# if that character appears only once in the original string, 
# or ")" if that character appears more than once in the original string. 
# Ignore capitalization when determining if a character is a duplicate.

def duplicate_encode(word)
  result = []
  word = word.downcase.split('')
  word.each do |i|
    if word.count(i) >= 2
      result << i.sub(i, ')')
    else
      result << i.sub(i, '(')
    end
  end
  result.join
end
