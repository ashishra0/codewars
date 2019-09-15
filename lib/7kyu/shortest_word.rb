# (1) Shortest_word
#  problem statement: given a string of words, return the length of the shortest word(s).

def find_short(s)
    l = s.split.sort_by {|a| a.length}
    return l[0].length
end

# Test cases
find_short("the world is not enough")
find_short("Are u going up the hill?")