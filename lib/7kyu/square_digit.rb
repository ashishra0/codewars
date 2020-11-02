# Square every digit
# Problem statement: square every digit of a number
# For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1.

def square_digits num
    num.to_s.chars.map{|x| x.to_i**2}.join.to_i
end
