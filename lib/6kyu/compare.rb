# Given two arrays a and b write a function comp(a, b) (compSame(a, b) in Clojure) that checks whether the two arrays have the "same" elements, with the same multiplicities. "Same" means, here, that the elements in b are the elements in a squared, regardless of the order

def comp(array1, array2)
  return false if array1.empty? || array2.empty?
  array1.sort.map { |i| i * i } == array2.sort
end
