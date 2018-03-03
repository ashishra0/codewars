# Disemvowel Trolls
# problem statement: write a function that takes a string and return a new string with all vowels removed.

def disemvowel(str)
    new_str = str.gsub! /[aAeEiIoOuU]/,""
    return new_str
end

# test cases
disemvowel("This website is for losers LOL!")
disemvowel("This code is absolute bullshit! haha!")
disemvowel("You are a loser!")