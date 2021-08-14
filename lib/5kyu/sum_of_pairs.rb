def sum_pairs(ints, s)
  return [0, 0] if s.zero?

  set = {}
  ints.collect do |num|
    sum = s - num
    if set.key?(sum)
      return [num, sum].reverse
    else
      set[num] = num
    end
  end

  nil
end
