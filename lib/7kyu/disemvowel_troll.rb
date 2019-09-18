# Disemvowel Trolls
# problem statement: write a function that takes a string and return a new string with all vowels removed.

class Vowel
  def disemvowel(str)
    str.gsub! /[aAeEiIoOuU]/, ''
  end
end
