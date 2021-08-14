def choose_best_sum(target, kount, list)
  list.combination(kount).collect { |ds| ds.inject(:+) }.reject { |s| s > target }.max
end
