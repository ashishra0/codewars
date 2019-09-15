# Given a string str, reverse it omitting all non-alphabetic characters.
# For str = "krishan", the output should be "nahsirk".
# For str = "ultr53o?n", the output should be "nortlu".

def reverse_letter(string)
  string.scan(/[a-z]/).join.reverse
end
