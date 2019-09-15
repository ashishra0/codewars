# (14) Sum of two lowest positive integers
# Problem statement: Create a function that returns the sum of the two lowest positive numbers given an array of minimum 4 integers. No floats or empty arrays will be passed.

# For example, when an array is passed like [19, 5, 42, 2, 77], the output should be 7.

# [10, 343445353, 3453445, 3453545353453] should return 3453455.


def sum_two_smallest_numbers(numbers)
  numbers.sort.first(2).inject(:+)
end

# test cases

sum_two_smallest_numbers([5, 8, 12, 18, 22])
sum_two_smallest_numbers([5, 25, 10, 28, 24])
sum_two_smallest_numbers([35, 18, 1, 8, 2])