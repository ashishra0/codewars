# Descending Order
# problem statement: make a function that can take any non-negative integer as a argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

def descending_order(n)
    num = n.to_s.split('').sort.reverse
    new_number = num.join("").to_i
    return new_number
end

# Test cases
descending_order(12345)
descending_order(13489)
descending_order(1432791247)