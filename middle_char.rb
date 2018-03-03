# Get the Middle Character
# Problem statment: You are going to be given a word. Your job is to return the middle character of the word. If the word's length is odd, return the middle character. If the word's length is even, return the middle 2 characters.

def get_middle(s)
    if
        s.length.even?
        new_string = s.slice(s.length/2-1,2)
        return new_string
    else
        s.length.odd?
        new_string = s.slice(s.length/2)
        return new_string
    end
end

# test cases

get_middle("test")
get_middle("testing")
get_middle("OkdWuJtDMupi")
get_middle("TVaBkqeHXOVTbNMe")
get_middle("NwDCmNDAedmLOxXZTYtz")

