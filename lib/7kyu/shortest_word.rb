# (1) Shortest_word
#  problem statement: given a string of words, return the length of the shortest word(s).

def find_short(s)
    l = s.split.sort_by {|a| a.length}
    l[0].length
end