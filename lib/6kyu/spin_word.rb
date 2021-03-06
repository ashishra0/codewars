# Stop gninnipS My sdroW!
# problem statement: Write a function that takes in a string of one or more words,
# and returns the same string, but with all five or more letter words reversed.
# Strings passed in will consist of only letters and spaces.
# Spaces will be included only when more than one word is present.

def spin(string)
  spin = string.split(' ').map { |s| s.length >= 5 ? s.reverse : s }
  spin.join(' ')
end
