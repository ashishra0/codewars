# List Filtering
# problem statement: create a function that takes a list of non-negative integers and strings and returns a new list with the strings filtered out.

def filter_list(l)
    list = l.select {|n| n.class == Integer}
end