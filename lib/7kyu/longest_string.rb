# Problem statment: Take 2 strings s1 and s2 including only letters from a to z.
# Return a new sorted string, the longest possible, containing distinct letters.
# each taken only once - coming from s1 or s2.
# Examples:  a = "xyaabbbccccdefww" b = "xxxxyyyyabklmopq" longest(a, b) -> "abcdefklmopqwxy"

def longest(arr1, arr2)
  (arr1 + arr2).split('').sort.uniq.join('')
end
