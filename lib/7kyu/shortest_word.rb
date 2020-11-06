# (1) Shortest_word
#  problem statement: given a string of words, return the length of the shortest word(s).

def find_short(str)
  l = str.split.sort_by(&:length)
  l[0].length
end
