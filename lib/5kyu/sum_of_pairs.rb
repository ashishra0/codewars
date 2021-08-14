def sum_pairs(ints, target)
  return [0, 0] if target.zero?

  set = {}
  ints.collect do |num|
    sum = target - num
    return [num, sum].reverse if set.key?(sum)

    set[num] = num
  end

  nil
end
