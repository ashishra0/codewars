def solution(digits)
  set = []
  digits = digits.to_s.split('')
  digits.length.times do |_|
    set << digits.take(5).join.to_i
    digits.shift
  end

  set.select { |num| num }.max
end
