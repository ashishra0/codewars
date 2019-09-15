# Remove the minimum
# Problem Statement: Given an array of integers, remove the smallest value. Do not mutate the original array/list. If there are multiple elements with the same value, remove the one with a lower index. If you get an empty array/list, return an empty array/list. Don't change the order of the elements that are left.

def remove_smallest(numbers)
    if(numbers.empty? || numbers.nil?)
        return numbers
    else
        numbers.delete_at(numbers.index(numbers.min))
        return numbers
    end
end

# test cases
remove_smallest([1, 2, 3, 4, 5])
remove_smallest([5, 3, 2, 1, 4])
remove_smallest([2, 2, 1, 2, 1])
remove_smallest([])
