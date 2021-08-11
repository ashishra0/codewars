def choose_best_sum(t, k, ls)
  ls.combination(k).collect { |ds| ds.inject(:+) }.reject { |s| s > t }.max
end
