# Categorize New Member

# The Western Suburbs Croquet Club has two categories of membership, Senior and Open. They would like your help with an application form that will tell prospective members which category they will be placed.
# To be a senior, a member must be at least 55 years old and have a handicap greater than 7. In this croquet club, handicaps range from -2 to +26; the better the player the lower the handicap.

# INPUT 
# Input will consist of a list of lists containing two items each. Each list contains information for a single potential member. Information consists of an integer for the person's age and an integer for the person's handicap.

# OUTPUT
# Output will consist of a list of string values["Open"] or ["Senior"] stating whether the respective member is to be placed in the senior or open category.

def openOrSenior(data)
    data.map {|age,handicap| age >= 55 && handicap > 7 ? "Senior" : "Open" }
end


openOrSenior([[45, 12],[55,21],[19, -2],[104, 20]])
openOrSenior([[3, 12],[55,1],[91, -2],[54, 23]])
openOrSenior([[59, 12],[55,-1],[12, -2],[12, 12]])
openOrSenior([[16, 23],[73,1],[56, 20],[1, -1]])