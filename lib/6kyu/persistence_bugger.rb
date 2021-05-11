def bugger(num)
  result = num.to_s.split('')
  count = 0
  until result.length == 1
    count += 1
    num = result.pop.to_i
    result.each do |n|
      num *= n.to_i
    end
    result = num.to_s.split('')
  end

  count
end
