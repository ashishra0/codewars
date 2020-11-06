# Given a string str, reverse it omitting all non-alphabetic characters.
# For str = "krishan", the output should be "nahsirk".
# For str = "ultr53o?n", the output should be "nortlu".

def reverse_letter(string)
  reverse = []
  new_string = string.scan(/[a-z]/)
  reverse << new_string.pop until new_string.empty?
  reverse.join('')
end
