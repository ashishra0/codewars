# Stop gninnipS My sdroW!
# problem statement: Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.

def spin(string)
    spin = string.split(" ").map {|s| s.length >= 5 ? s.reverse : s}
    return spin.join(" ")
end

# test cases:
spin("Hey fellow warriors")
spin("This cannot be solved")
spin("That is one tough problem")
spin("easy stuff")
spin("spin this")